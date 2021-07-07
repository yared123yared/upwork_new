import 'dart:io';

import 'package:complex/blocs/auth_bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/request/auth_request/signup_request.dart';
import 'package:complex/data/providers/auth_provider.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/main.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/common/widgets/tap_widget.dart';
import 'package:complex/view/auth_pages/phone_verification_page.dart';
import 'package:complex/view/auth_pages/widgets/login_form.dart';
import 'package:complex/view/auth_pages/widgets/signup_form.dart';
import 'package:complex/view/dashboard/home_page.dart';
import 'package:complex/utils/next_page_routing.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/social_auth.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injector/injector.dart';
import 'package:provider/provider.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class LandingPage extends StatefulWidget {
  _LandingPage createState() => _LandingPage();
}

class _LandingPage extends State<LandingPage> {
  PageController _pageController = PageController(initialPage: 0);
  int currentSegment = 0;
  SocialAuth _socialAuth = SocialAuth();
  AuthProvider _authProvider = Injector.appInstance.get<AuthProvider>();

  var _isLoading = false;
  AuthBloc _authBloc;

  var _userRepository = Injector.appInstance.get<UserRepository>();

  @override
  Widget build(BuildContext context) {
    Application(context);
    _authBloc = Provider.of<AuthBloc>(context);
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (BuildContext context, AuthState state) {
        if (state is LoginState) _handleLogin(state);
        if (state is CreateUserState) _handleCreateUser(state);
      },
      builder: (BuildContext context, AuthState state) {
        return Scaffold(
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
                        LoginForm(),
                        SignupForm(),
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
                                      context: context,
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
                                            context: context,
                                            message: "${isLogin.message}");
                                      }
                                    } else {
                                      print('Error!!');
                                    }
                                  });
                                } else {
                                  Utility.showSnackBar(
                                      context: context,
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
                                      context: context,
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
        Utility.showSnackBar(context: context, message: state.message);
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
        Utility.showSnackBar(context: context, message: state.message);
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
