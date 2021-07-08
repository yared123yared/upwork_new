import 'package:complex/blocs/auth_bloc.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/data/models/request/auth_request/signup_request.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/utility.dart';
import 'package:complex/utils/validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:provider/provider.dart';

class SignupForm extends StatefulWidget {
  SignupForm({Key key}) : super(key: key);

  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  Country _selected = Country.IN;

  final CustomTextFieldController _password = CustomTextFieldController();
  final CustomTextFieldController _firstName = CustomTextFieldController();
  final CustomTextFieldController _middleName = CustomTextFieldController();
  final CustomTextFieldController _lastName = CustomTextFieldController();
  final CustomTextFieldController _signUpEmail = CustomTextFieldController();
  final CustomTextFieldController _contactNumber = CustomTextFieldController();
  final CustomTextFieldController _signUpPassword = CustomTextFieldController();
  final CustomTextFieldController _passwordM = CustomTextFieldController();

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

  @override
  Widget build(BuildContext context) {
    AuthBloc _authBloc = Provider.of<AuthBloc>(context);

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
                    validate: Validate.withOption(
                      isRequired: true,
                    ),
                  ),
                  CustomTextField(
                    title: "Middle Name",
                    controller: _middleName,
                    validate: Validate.withOption(
                      isRequired: true,
                    ),
                  ),
                  CustomTextField(
                    title: "Last Name",
                    controller: _lastName,
                    validate: Validate.withOption(
                      isRequired: true,
                    ),
                  ),
                  CustomTextField(
                    icon: Icons.email,
                    title: "Email Address",
                    controller: _signUpEmail,
                    validate: Validate.withOption(
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
                          validate: Validate.withOption(
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
                    validate: Validate.withOption(
                      isRequired: true,
                    ),
                  ),
                  CustomTextField(
                    title: "Confirm Password",
                    controller: _passwordM,
                    isPassword: true,
                    validate: Validate.withOption(
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
                        context: context, message: "Password didn't match");
                  } else if (validatePassword(_signUpPassword.text) != null) {
                    Utility.showSnackBar(
                        context: context,
                        message: validatePassword(_signUpPassword.text));
                  } else {
                    Utility.showSnackBar(
                        context: context, message: "Password didn't match");
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
}
