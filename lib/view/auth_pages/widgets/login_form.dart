import 'package:complex/blocs/auth_bloc.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/common/widgets/tap_widget.dart';
import 'package:complex/data/models/request/auth_request/login_request.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final CustomTextFieldController _email = CustomTextFieldController();
  final CustomTextFieldController _password = CustomTextFieldController();
  bool _validate() {
    return _email.isValid && _password.isValid;
  }

  void _forgotPasswordClick(BuildContext context) {
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
              validate: Validate.withOption(
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
                    if (_email.isValid) {
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

  @override
  Widget build(BuildContext context) {
    AuthBloc _authBloc = Provider.of<AuthBloc>(context);

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
                  validate: Validate.withOption(
                    isRequired: true,
                    isEmail: true,
                  ),
                ),
                CustomTextField(
                  icon: Icons.lock_outline,
                  title: "Password",
                  controller: _password,
                  isPassword: true,
                  validate: Validate.withOption(
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
                onTap: () => _forgotPasswordClick(context),
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
}
