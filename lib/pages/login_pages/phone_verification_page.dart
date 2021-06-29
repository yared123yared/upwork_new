import 'package:complex/blocs/auth_bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/pages/login_pages/otp_verification_page.dart';
import 'package:complex/utils/next_page_routing.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:complex/utils/validations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_country_picker/country.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:provider/provider.dart';

import '../../main.dart';

class PhoneVerificationPage extends StatefulWidget {
  final int value;

  PhoneVerificationPage({this.value = 0});

  @override
  _PhoneVerificationPageState createState() => _PhoneVerificationPageState();
}

class _PhoneVerificationPageState extends State<PhoneVerificationPage> {
  final CustomTextFieldController controller = CustomTextFieldController();
  Country country = Country.IN;
  AuthBloc _authBloc;
  bool _isLoading = false;
  var _key = GlobalKey<ScaffoldState>();

  String _verificationId;

  @override
  Widget build(BuildContext context) {
    Application(context);
    _authBloc = Provider.of<AuthBloc>(context);
    return BlocListener<AuthBloc, AuthState>(
      listener: (BuildContext context, AuthState state) {
        if (state is LoginState) _handleVerifyStateLogin(state);
      },
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (BuildContext _context, AuthState state) {
          return Scaffold(
            key: _key,
            backgroundColor: Colors.grey[300],
            appBar: AppBar(
              title: Text(
                "Phone Number",
                style: Styles.boldText(color: Colors.white, size: 18),
              ),
            ),
            body: ScreenWithLoader(
              isLoading: _isLoading,
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: CountryPicker(
                              dense: false,
                              showFlag: true,
                              showDialingCode: true,
                              showName: false,
                              showCurrency: false,
                              onChanged: (Country country) {
                                setState(() {
                                  this.country = country;
                                });
                              },
                              selectedCountry: this.country,
                            ),
                          ),
                          Expanded(
                            child: CustomTextField(
                              title: "Contact Number",
                              controller: controller,
                              validate:  Validate.withOption(
                                isRequired: true,
                                isNumber: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      text: 'Send OTP',
                      borderColor: Colors.black,
                      onTap: () {
                        Utility.hideKeyboard();
                        if (validatePhone(controller.text) != null) {
                          Utility.showSnackBar(
                              key: _key,
                              message: validatePhone(controller.text));
                        } else {
                          _verifyNumber();
                        }
                      },
                    ),
                    const SizedBox(height: 20),
                    Visibility(
                      visible: widget.value == 0,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: CustomButton(
                          text: 'Sign out',
                          borderColor: Colors.black,
                          onTap: () {
                            Utility.hideKeyboard();
                            /*BlocProvider.of<AuthBloc>(context).add(AuthEvent.logout())*/
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _handleVerifyStateLogin(LoginState state) {
    switch (state.apiState) {
      case ApiStatus.LOADING:
        _isLoading = true;
        break;
      case ApiStatus.SUCCESS:
        break;
      case ApiStatus.ERROR:
        _isLoading = false;
        Utility.showSnackBar(key: _key, message: state.message);
        break;
      case ApiStatus.INITIAL:
        break;
    }
  }

  _verifyNumber() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    setState(() {
      _isLoading = true;
    });
    PhoneVerificationCompleted verificationCompleted =
        (PhoneAuthCredential phoneAuthCredential) async {
      _isLoading = false;
      print(
          "Phone number automatically verified and user signed in: ${phoneAuthCredential}");
    };

    PhoneVerificationFailed verificationFailed =
        (FirebaseAuthException authException) {
      setState(() {
        _isLoading = false;
      });
      print(
          'Phone number verification failed. Code: ${authException.code}. Message: ${authException.message}');
      Utility.showSnackBar(
          key: _key,
          message:
              'Phone number verification failed. Code: ${authException.code}. Message: ${authException.message}');
    };

    PhoneCodeSent codeSent =
        (String verificationId, [int forceResendingToken]) async {
      Utility.showSnackBar(
          key: _key,
          message: 'Please check your phone for the verification code.');
      _verificationId = verificationId;
      _isLoading = false;
      print(
          'Please check your phone for the verification code. $_verificationId');
      Navigator.push(
        context,
        NextPageRoute(
          OtpVerificationPage(
            verificationId: _verificationId,
            phoneNumber: '+${country.dialingCode}${controller.text.trim()}',
          ),
        ),
      );
    };

    PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout =
        (String verificationId) {
      _verificationId = verificationId;
      setState(() {
        _isLoading = false;
      });
    };

    try {
      await auth.verifyPhoneNumber(
          phoneNumber: '+${country.dialingCode}${controller.text.trim()}',
          timeout: const Duration(seconds: 5),
          verificationCompleted: verificationCompleted,
          verificationFailed: verificationFailed,
          codeSent: codeSent,
          codeAutoRetrievalTimeout: codeAutoRetrievalTimeout);
    } catch (e) {
      Utility.showSnackBar(
          key: _key, message: "Failed to Verify Phone Number: ${e}");
    }
  }
}
