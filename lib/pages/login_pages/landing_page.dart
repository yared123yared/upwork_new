import 'dart:io';

import 'package:complex/blocs/auth_bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/request/auth_request/login_request.dart';
import 'package:complex/data/models/request/auth_request/signup_request.dart';
import 'package:complex/data/providers/auth_provider.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/main.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/common/widgets/tap_widget.dart';
import 'package:complex/pages/dashboard/home_page.dart';
import 'package:complex/pages/login_pages/phone_verification_page.dart';
import 'package:complex/utils/next_page_routing.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/social_auth.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:complex/utils/validations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart' show CupertinoSlidingSegmentedControl;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:injector/injector.dart';
import 'package:provider/provider.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class LandingPage extends StatefulWidget {
  _LandingPage createState() => _LandingPage();
}

class _LandingPage extends State<LandingPage> {
  GlobalKey _key = GlobalKey<ScaffoldState>();
  PageController _pageController = PageController(initialPage: 0);
  CustomTextFieldController _email = CustomTextFieldController();
  CustomTextFieldController _password = CustomTextFieldController();
  CustomTextFieldController _firstName = CustomTextFieldController();
  CustomTextFieldController _middleName = CustomTextFieldController();
  CustomTextFieldController _lastName = CustomTextFieldController();
  CustomTextFieldController _signUpEmail = CustomTextFieldController();
  CustomTextFieldController _contactNumber = CustomTextFieldController();
  CustomTextFieldController _signUpPassword = CustomTextFieldController();
  CustomTextFieldController _passwordM = CustomTextFieldController();
  int currentSegment = 0;
  Country _selected = Country.IN;
  SocialAuth _socialAuth = SocialAuth();
  AuthProvider _authProvider = Injector.appInstance.get<AuthProvider>();

  var _isLoading = false;
  AuthBloc _authBloc;

  var _userRepository = Injector.appInstance.get<UserRepository>();

  bool _validate() {
    return _email.isValid && _password.isValid;
  }

  bool _validateEmail() {
    return _email.isValid;
  }

  @override
  Widget build(BuildContext context) {
    Application(context);
    _authBloc = Provider.of<AuthBloc>(context);
    return BlocListener<AuthBloc, AuthState>(
      listener: (BuildContext context, AuthState state) {
        if (state is LoginState) _handleLogin(state);
        if (state is CreateUserState) _handleCreateUser(state);
      },
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (BuildContext context, AuthState state) {
          return Scaffold(
            key: _key,
            resizeToAvoidBottomInset: false,
            backgroundColor: Theme.of(context).primaryColor,
            body: ScreenWithLoader(
              isLoading: _isLoading,
              body: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 4,
                        vertical: MediaQuery.of(context).size.width / 10,
                      ),
                      child: Image.asset('assets/logo.png'),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: CupertinoSlidingSegmentedControl<int>(
                        backgroundColor: Colors.white24,
                        groupValue: currentSegment,
                        children: {
                          0: SegmentTab(
                            text: 'Existing',
                            isSelected: currentSegment == 0,
                          ),
                          1: SegmentTab(
                            text: 'New',
                            isSelected: currentSegment == 1,
                          ),
                        },
                        onValueChanged: (i) {
                          _pageController.animateToPage(i,
                              duration: Duration(
                                milliseconds: 500,
                              ),
                              curve: Curves.easeIn);
                          setState(() {
                            currentSegment = i;
                          });
                        },
                      ),
                    ),
                    Utility.size(height: 50),
                    Expanded(
                      child: PageView(
                        physics:
                            !_isLoading ? null : NeverScrollableScrollPhysics(),
                        controller: _pageController,
                        onPageChanged: (int index) {
                          setState(() {
                            currentSegment = index;
                          });
                        },
                        children: [
                          _login(),
                          _signUp(),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TapWidget(
                            onTap: () {
                              _socialAuth.signInWithFacebook().then((isLogin) {
                                if (isLogin != null) {
                                  if (isLogin is UserCredential) {
                                    if (isLogin.additionalUserInfo.isNewUser) {
                                      setState(() {
                                        _isLoading = true;
                                      });
                                      SignUpRequest _request = SignUpRequest(
                                        requestType: "PROFILE",
                                        userId: isLogin.user.uid,
                                        email: isLogin.user.email,
                                        password:
                                            isLogin.credential.token.toString(),
                                        phoneNum: isLogin.user.uid,
                                        username: isLogin.user.displayName,
                                      );
                                      _authBloc.add(
                                        CreateSocialUserEvent(
                                          request: _request,
                                        ),
                                      );
                                    } else {
                                      _authBloc.add(
                                        SocialLoginUser(
                                          request: isLogin.credential,
                                        ),
                                      );
                                    }
                                  } else {
                                    Utility.showSnackBar(
                                        key: _key,
                                        message: "${isLogin.message}");
                                  }
                                } else {
                                  print('Error!!');
                                }
                              });
                            },
                            child: Container(
                              child: Image.asset(
                                'assets/facebook.png',
                              ),
                              width: 40,
                              height: 40,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                          if (Platform.isIOS)
                            TapWidget(
                              onTap: () {
                                SignInWithApple.isAvailable().then((value) {
                                  if (value) {
                                    _socialAuth.appleSignIn().then((isLogin) {
                                      if (isLogin != null) {
                                        if (isLogin is UserCredential) {
                                          if (isLogin
                                              .additionalUserInfo.isNewUser) {
                                            SignUpRequest _request =
                                                SignUpRequest(
                                              requestType: "PROFILE",
                                              userId: isLogin.user.uid,
                                              email: isLogin.user.email,
                                              password: isLogin.credential.token
                                                  .toString(),
                                              phoneNum: isLogin.user.uid,
                                              username:
                                                  isLogin.user.displayName,
                                            );
                                            _authBloc.add(
                                              CreateSocialUserEvent(
                                                request: _request,
                                              ),
                                            );
                                          } else {
                                            _authBloc.add(
                                              SocialLoginUser(
                                                request: isLogin.credential,
                                              ),
                                            );
                                          }
                                        } else {
                                          Utility.showSnackBar(
                                              key: _key,
                                              message: "${isLogin.message}");
                                        }
                                      } else {
                                        print('Error!!');
                                      }
                                    });
                                  } else {
                                    Utility.showSnackBar(
                                        key: _key,
                                        message:
                                            "Apple login is not available for your device");
                                  }
                                });
                              },
                              child: Container(
                                child: Image.asset(
                                  'assets/apple.png',
                                ),
                                width: 40,
                                height: 40,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                              ),
                            ),
                          TapWidget(
                            onTap: () {
                              _socialAuth.signInWithGoogle().then((isLogin) {
                                if (isLogin != null) {
                                  if (isLogin is UserCredential) {
                                    if (isLogin.additionalUserInfo.isNewUser) {
                                      setState(() {
                                        _isLoading = true;
                                      });
                                      SignUpRequest _request = SignUpRequest(
                                        requestType: "PROFILE",
                                        userId: isLogin.user.uid,
                                        email: isLogin.user.email,
                                        password:
                                            isLogin.credential.token.toString(),
                                        phoneNum: isLogin.user.uid,
                                        username: isLogin.user.displayName,
                                      );
                                      _authBloc.add(CreateSocialUserEvent(
                                          request: _request));
                                    } else {
                                      _authBloc.add(
                                        SocialLoginUser(
                                          request: isLogin.credential,
                                        ),
                                      );
                                    }
                                  } else {
                                    Utility.showSnackBar(
                                        key: _key,
                                        message: "${isLogin.message}");
                                  }
                                } else {
                                  print('Error!!');
                                }
                              });
                            },
                            child: Container(
                              child: Image.asset(
                                "assets/google.png",
                              ),
                              width: 40,
                              height: 40,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                // decoration: BoxDecoration(gradient: C.bgGradient),
              ),
            ),
          );
        },
      ),
    );
  }

  _login() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                color: ColorConstants.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: [
                CustomTextField(
                  icon: Icons.email,
                  title: "Email Address",
                  controller: _email,
                  validate:  Validate.withOption(
                    isRequired: true,
                    isEmail: true,
                  ),
                ),
                CustomTextField(
                  icon: Icons.lock_outline,
                  title: "Password",
                  controller: _password,
                  isPassword: true,
                  validate:  Validate.withOption(
                    isRequired: true,
                  ),
                ),
              ],
            ),
          ),
          Utility.size(height: 50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CustomButton(
                text: "Login",
                borderColor: ColorConstants.white,
                onTap: () async {
                  FocusScope.of(context).unfocus();
                  if (_validate()) {
                    LoginRequest _loginRequest = LoginRequest(
                        email: _email.text, password: _password.text);
                    _authBloc.add(LoginUser(request: _loginRequest));
                  }
                },
              ),
              Utility.size(height: 50),
              InkWell(
                onTap: _forgotPasswordClick,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 14,
                      color: ColorConstants.white,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void _forgotPasswordClick() {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (newContext) => AlertDialog(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reset Password',
              style: Styles.semiBoldText(),
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(
              icon: Icons.email,
              title: "Email Address",
              controller: _email,
              validate:  Validate.withOption(
                isRequired: true,
                isEmail: true,
              ),
            ),
            Utility.size(height: 20),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomButton(
                  text: "Submit",
                  onTap: () {
                    if (_validateEmail()) {
                      /*BlocProvider.of<AuthBloc>(context).add(
                          AuthEvent.resetPassword(
                              email: _email.text));*/
                      Navigator.pop(newContext);
                    }
                  },
                ),
                Utility.size(height: 15),
                TapWidget(
                  onTap: () {
                    Navigator.pop(newContext);
                  },
                  child: Text(
                    "Cancel",
                    style: Styles.boldText(color: Colors.grey),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  bool _validateSignup() {
    bool vaild = true;

    if (!_firstName.isValid) vaild = false;
    if (!_lastName.isValid) vaild = false;
    if (!_signUpEmail.isValid) vaild = false;
    if (!_contactNumber.isValid) vaild = false;
    if (!_signUpPassword.isValid) vaild = false;
    if (!_passwordM.isValid) vaild = false;

    return vaild;
  }

  Widget _signUp() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: ColorConstants.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  CustomTextField(
                    icon: Icons.person_outline,
                    title: "First Name",
                    controller: _firstName,
                    validate:  Validate.withOption(
                      isRequired: true,
                    ),
                  ),
                  CustomTextField(
                    title: "Middle Name",
                    controller: _middleName,
                    validate:  Validate.withOption(
                      isRequired: true,
                    ),
                  ),
                  CustomTextField(
                    title: "Last Name",
                    controller: _lastName,
                    validate:  Validate.withOption(
                      isRequired: true,
                    ),
                  ),
                  CustomTextField(
                    icon: Icons.email,
                    title: "Email Address",
                    controller: _signUpEmail,
                    validate:  Validate.withOption(
                      isRequired: true,
                    ),
                  ),
                  Row(
                    children: [
                      CountryPicker(
                        dense: false,
                        showFlag: true,
                        showDialingCode: true,
                        showName: false,
                        showCurrency: false,
                        onChanged: (Country country) {
                          setState(() {
                            _selected = country;
                          });
                        },
                        selectedCountry: _selected,
                      ),
                      Expanded(
                        child: CustomTextField(
                          title: "Contact Number",
                          controller: _contactNumber,
                          validate:  Validate.withOption(
                            isRequired: true,
                            isNumber: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                  CustomTextField(
                    icon: Icons.lock_outline,
                    title: "Password",
                    controller: _signUpPassword,
                    isPassword: true,
                    validate:  Validate.withOption(
                      isRequired: true,
                    ),
                  ),
                  CustomTextField(
                    title: "Confirm Password",
                    controller: _passwordM,
                    isPassword: true,
                    validate:  Validate.withOption(
                      isRequired: true,
                    ),
                  ),
                ],
              ),
            ),
            Utility.size(height: 50),
            CustomButton(
              text: "Sign Up",
              borderColor: Colors.white,
              onTap: () {
                FocusScope.of(context).unfocus();
                if (_validateSignup()) {
                  if (_signUpPassword.text == _passwordM.text &&
                      validatePassword(_signUpPassword.text) == null) {
                    print(
                        "given phone number is: ${_selected.dialingCode}${_contactNumber.text}");
                    SignUpRequest newUser = SignUpRequest(
                        email: _signUpEmail.text,
                        username:
                            '${_firstName.text} ${_middleName.text} ${_lastName.text}',
                        phoneNum:
                            "+${_selected.dialingCode}${_contactNumber.text}",
                        password: _signUpPassword.text,
                        requestType: "PROFILE");
                    _authBloc.add(CreateUserEvent(request: newUser));
                  } else if (_signUpPassword.text != _passwordM.text) {
                    print("${_password.text} != ${_passwordM.text}");
                    Utility.showSnackBar(
                        key: _key, message: "Password didn't match");
                  } else if (validatePassword(_signUpPassword.text) != null) {
                    Utility.showSnackBar(
                        key: _key,
                        message: validatePassword(_signUpPassword.text));
                  } else {
                    Utility.showSnackBar(
                        key: _key, message: "Password didn't match");
                  }
                }
              },
            ),
            Utility.size(height: 50),
          ],
        ),
      ),
    );
  }

  void _handleLogin(LoginState state) {
    switch (state.apiState) {
      case ApiStatus.LOADING:
        _isLoading = true;
        break;
      case ApiStatus.SUCCESS:
        _authProvider.hasVerifiedNumber().then((value) {
          if (value) {
            _userRepository.setUser(_authProvider.getUId()).then((value) {
              _isLoading = false;
              Navigator.pushAndRemoveUntil(
                  context, NextPageRoute(HomePage()), (route) => false);
            });
          } else {
            _isLoading = false;
            Navigator.push(context, NextPageRoute(PhoneVerificationPage()));
          }
        });
        _userRepository.setUser(_authProvider.getUId()).then((value) {
          _isLoading = false;
          Navigator.pushAndRemoveUntil(
              context, NextPageRoute(HomePage()), (route) => false);
        });
        break;
      case ApiStatus.ERROR:
        _isLoading = false;
        Utility.showSnackBar(key: _key, message: state.message);
        break;
      case ApiStatus.INITIAL:
        break;
    }
  }

  void _handleCreateUser(CreateUserState state) {
    switch (state.apiState) {
      case ApiStatus.LOADING:
        _isLoading = true;
        break;
      case ApiStatus.SUCCESS:
        _authProvider.hasVerifiedNumber().then((value) {
          _isLoading = false;
          if (value) {
            Navigator.pushAndRemoveUntil(
                context, NextPageRoute(HomePage()), (route) => false);
          } else {
            Navigator.push(context, NextPageRoute(PhoneVerificationPage()));
          }
        });
        break;
      case ApiStatus.ERROR:
        _isLoading = false;
        Utility.showSnackBar(key: _key, message: state.message);
        break;
      case ApiStatus.INITIAL:
        break;
    }
  }
}

class SegmentTab extends StatelessWidget {
  final String text;
  final bool isSelected;

  SegmentTab({@required this.text, this.isSelected}) : assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Styles.normalText(
            color: isSelected ? ColorConstants.black : ColorConstants.white),
      ),
    );
  }
}
