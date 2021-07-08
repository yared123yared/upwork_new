import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/main.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/view/dashboard/home_page.dart';
import 'package:complex/utils/next_page_routing.dart';
import 'package:complex/utils/notification_helper.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:injector/injector.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationPage extends StatefulWidget {
  final String phoneNumber;
  final String verificationId;

  const OtpVerificationPage({
    Key key,
    this.phoneNumber,
    this.verificationId,
  }) : super(key: key);

  @override
  _OtpVerificationPageState createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  bool isActive = false;
  String code;
  bool _isLoading = false;
  var _key = GlobalKey<ScaffoldState>();
  NotificationHelper _helper = NotificationHelper.getInstance();
  var _userRepository = Injector.appInstance.get<UserRepository>();

  @override
  Widget build(BuildContext context) {
    Application(context);
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text(
          "OTP Verification",
          style: Styles.boldText(color: Colors.white, size: 18),
        ),
      ),
      body: ScreenWithLoader(
        isLoading: _isLoading,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 8,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          "Please enter your\nverification code",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              color: ColorConstants.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: PinCodeTextField(
                          appContext: context,
                          backgroundColor: Colors.transparent,
                          enableActiveFill: true,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          keyboardType: TextInputType.number,
                          length: 6,
                          obscureText: false,
                          autoFocus: true,
                          animationType: AnimationType.slide,
                          pinTheme: PinTheme(
                            activeFillColor: ColorConstants.white,
                            selectedFillColor: ColorConstants.white,
                            inactiveFillColor: ColorConstants.white,
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(5),
                            inactiveColor: Colors.grey,
                            fieldHeight: MediaQuery.of(context).size.width / 7,
                            fieldWidth: MediaQuery.of(context).size.width / 7,
                          ),
                          animationDuration: Duration(milliseconds: 300),
                          onChanged: (value) {
                            if (value.length < 6) {
                              setState(() {
                                isActive = false;
                              });
                            }
                          },
                          onCompleted: (value) {
                            setState(() {
                              isActive = true;
                              code = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: CustomButton(
                          text: "Submit",
                          borderColor: isActive
                              ? ColorConstants.primaryColor
                              : Colors.black54,
                          onTap: _submitClick,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _submitClick() async {
    if (isActive) {
      setState(() {
        _isLoading = true;
      });
      try {
        await FirebaseAuth.instance.currentUser.updatePhoneNumber(
          PhoneAuthProvider.credential(
            verificationId: widget.verificationId,
            smsCode: code,
          ),
        );
        _userRepository
            .setUser(FirebaseAuth.instance.currentUser.uid)
            .then((value) {
          _isLoading = false;
          _helper.setFcm();
          Navigator.pushAndRemoveUntil(
              context, NextPageRoute(HomePage()), (route) => false);
        });
      } catch (e) {
        setState(() {
          _isLoading = false;
        });
        if (e is FirebaseAuthException) print("${e.message}");
        Utility.showSnackBar(context: context, message: "${e.message}");
      }
    }
  }
}
