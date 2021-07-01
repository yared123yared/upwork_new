String validatePhone(String value) {
  Pattern pattern = r'(^(?:[+0]9)?[0-9]{10}$)';
  RegExp regex = RegExp(pattern);
  if (value.replaceAll('-', "") == null ||
      value.replaceAll('-', "").trim().isEmpty) {
    return "Strings().emptyPhone";
  } else if (!regex.hasMatch(value.replaceAll('-', "")))
    return "Strings().invalidPhone";
  else
    return null;
}

String validateName(String value) {
  String pattern = r'(^[a-zA-Z ]*$)';
  RegExp regExp = RegExp(pattern);
  if (value == null) {
    return "Strings().emptyName";
  } else if (value.trim().isEmpty) {
    return "Strings().emptyName";
  } else if (!regExp.hasMatch(value.trim())) {
    return "Strings().invalidName";
  } else
    return null;
}

String validateFirstName(String value) {
  String pattern = r'(^[a-zA-Z]*$)';
  RegExp regExp = RegExp(pattern);
  if (value == null) {
    return "Strings().emptyFirstName";
  } else if (value.trim().isEmpty) {
    return "Strings().emptyFirstName";
  } else if (!regExp.hasMatch(value.trim())) {
    return "Strings().invalidFirstName";
  } else
    return null;
}

String validateLastName(String value) {
  String pattern = r'(^[a-zA-Z ]*$)';
  RegExp regExp = RegExp(pattern);
  if (value == null) {
    return "Strings().emptyLastName";
  } else if (value.trim().isEmpty) {
    return "Strings().emptyLastName";
  } else if (!regExp.hasMatch(value.trim())) {
    return "Strings().invalidLastName";
  } else
    return null;
}

String validateEmail(String value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,3}))$';
  RegExp regExp = RegExp(pattern);
  if (value == null || value.trim().isEmpty) {
    return "Strings().emptyEmail";
  } else if (!regExp.hasMatch(value)) {
    return "Strings().invalidEmail";
  } else
    return null;
}

String validatePassword(String value) {
  String pattern =
      r'^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=?])(?=\S+$).{8,}$';
  RegExp regExp = RegExp(pattern);
  if (value == null || value.trim().isEmpty) {
    return "Strings().emptyPassword";
  } else if (!regExp.hasMatch(value)) {
    return "Strings().invalidPassword";
  } else
    return null;
}

bool validateSpecialCharacter(String value) {
  String pattern = r'(^[a-zA-Z ]*$)';
  RegExp regExp = RegExp(pattern);
  if (value == null || value.trim().isEmpty) {
    return false;
  } else if (regExp.hasMatch(value.trim()))
    return false;
  else
    return true;
}

bool validatePasswordLength(String value) {
  if (value == null || value.trim().isEmpty) {
    return false;
  } else if (value.trim().length < 9)
    return false;
  else
    return true;
}

bool validateLowerCase(String value) {
  String pattern = r'([a-z])';
  RegExp regExp = RegExp(pattern);
  if (value == null || value.trim().isEmpty) {
    return false;
  } else if (!regExp.hasMatch(value.trim()))
    return false;
  else
    return true;
}

bool validateUpperCase(String value) {
  String pattern = r'([A-Z])';
  RegExp regExp = RegExp(pattern);
  if (value == null || value.trim().isEmpty) {
    return false;
  } else if (!regExp.hasMatch(value.trim()))
    return false;
  else
    return true;
}
