import 'dart:async';

import 'package:complex/utils/resource/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final CustomTextFieldController controller;
  final Function(String text) onChange;

  ///when the item is disabled
  final Color textColor;
  final Function() onTap;
  final String title;
  final bool disableDivider;
  final TextInputType keyboardType;
  final EdgeInsetsGeometry margin;
  final Validate validate;
  final IconData icon;
  final bool enabled;
  final bool isMultiLine;
  final bool autoFocus;
  final bool syncInitial;
  final bool isPassword;
  final String initialValue;
  final bool iconInLeft;

  CustomTextField({
    Key key,
    @required this.controller,
    this.onChange,
    this.syncInitial,
    this.textColor,
    this.onTap,
    this.disableDivider = false,
    @required this.title,
    this.keyboardType,
    this.margin,
    this.autoFocus,
    this.validate,
    this.icon,
    this.enabled = true,
    this.isPassword,
    this.isMultiLine = false,
    this.initialValue,
    this.iconInLeft = false,
  })  : assert(controller != null),
        super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String _errorText = "";

  Color get textColor {
    return widget.textColor ??
        (widget.enabled || widget.onTap != null
            ? ColorConstants.black
            : Colors.grey);
  }

  @override
  void initState() {
    super.initState();

    widget.controller._init(
      _getTextHandler,
      _setTextHandler,
      _clearTextHandler,
      _isValidHandler,
      _setErrorText,
    );

    if (widget.initialValue != null && widget.initialValue.isNotEmpty)
      _setTextHandler(widget.initialValue);
  }

  @override
  void didUpdateWidget(CustomTextField oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.controller != widget.controller) {
      widget.controller._init(
        _getTextHandler,
        _setTextHandler,
        _clearTextHandler,
        _isValidHandler,
        _setErrorText,
      );
    }

    ///if the text changed programmatically need to re validate it with the new validation if there a new validation
    if (_getTextHandler() != null && _getTextHandler().isNotEmpty)
      _isValidHandler();
    else
      _setErrorText('');

    if (widget.syncInitial == true)
      Timer(Duration(milliseconds: 80),
          () => _setTextHandler(widget.initialValue));
  }

  String _getTextHandler() {
    return widget.controller._textEditingController.text;
  }

  _setTextHandler(String txt) {
    if (mounted) widget.controller._textEditingController.text = txt;
    _isValidHandler();
  }

  _setErrorText(String value) {
    setState(() {
      _setErrorTextColor(value);
    });
  }

  bool _isValidHandler() {
    if (widget.validate != null) {
      var data = widget.validate._validate(
          widget.controller._textEditingController.text, widget.title);
      if (data == null || data.isEmpty) {
        // valid data
        _setErrorTextColor("");
        return true;
      } else {
        //invalid data
        _setErrorTextColor(data);
        return false;
      }
    } else
      return true;
  }

  _clearTextHandler() {
    widget.controller._textEditingController.clear();
  }

  void _setErrorTextColor(String x) {
    if (mounted)
      setState(() {
        _errorText = x;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.margin ?? EdgeInsets.only(top: 24, bottom: 24),
      child: TextFormField(
        textInputAction:
            widget.isMultiLine ? TextInputAction.newline : TextInputAction.next,
        validator: (value) => widget.validate._validate(
          value,
          widget.title,
        ),
        readOnly: !widget.enabled,
        enabled: widget.enabled || widget.onTap != null,
        onTap: widget.onTap,
        focusNode: widget.controller.focusNode,
        controller: widget.controller._textEditingController,
        keyboardType: keyBoardType,
        autofocus: widget.autoFocus ?? false,
        obscureText: widget.isPassword ?? false,
        maxLines: widget.isMultiLine ? null : 1,
        // textInputAction: TextInputAction.next,
        style: TextStyle(
          fontFamily: 'Merriweather',
          fontSize: 18,
          color: textColor,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(
            widget.icon ?? null,
            color: Colors.grey,
          ),
          labelText: widget.title,
          border: !widget.disableDivider
              ? UnderlineInputBorder()
              : InputBorder.none,
          labelStyle: TextStyle(
            fontFamily: 'Merriweather',
            height: 0.5,
            fontSize: 18,
            color: textColor.withOpacity(textColor.opacity * .8),
          ),
          errorText: _errorText.isEmpty ? null : _errorText,
        ),
        onChanged: (x) {
          widget.onChange?.call(x);
          _isValidHandler();
        },
      ),
    );
  }

  TextInputType get keyBoardType {
    if (widget.isMultiLine) return TextInputType.multiline;
    if (widget.keyboardType != null) return widget.keyboardType;

    if (widget.validate != null) {
      if (widget.validate.isEmail) return TextInputType.emailAddress;
      if (widget.validate.isNumber || widget.validate.isInt)
        return TextInputType.number;
    }

    return null;
  }
}

class CustomTextFieldController {
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  var tag;
  String Function() _getTextHandler;
  bool Function() _isValidHandler;
  void Function() _clearTextHandler;
  void Function(String value) _setTextHandler;
  void Function(String value) _setErrorText;

  _init(
      String Function() getTextHandler,
      Function(String value) setTextHandler,
      Function() clearTextHandler,
      bool Function() isValidHandler,
      Function(String value) setErrorText) {
    _getTextHandler = getTextHandler;
    _setTextHandler = setTextHandler;
    _isValidHandler = isValidHandler;
    _clearTextHandler = clearTextHandler;
    _setErrorText = setErrorText;
  }

  String get text => _getTextHandler?.call();

  set text(String value) {
    _setTextHandler?.call(value);
  }

  set errorText(String value) => _setErrorText?.call(value);

  bool get isValid => _isValidHandler?.call();

  void clear() {
    _clearTextHandler?.call();
  }
}

class Validate {
  final bool isRequired;
  final int minLength;
  final int maxLength;
  final bool isEmail;
  final bool isNumber;
  final bool isInt;
  final String checkPassword;
  final String Function(String val) customCheck;

  Validate.withOption({
    this.isRequired,
    this.customCheck,
    this.isEmail = false,
    this.minLength,
    this.checkPassword,
    this.maxLength = 250,
    this.isNumber = false,
    this.isInt = false,
  });

  String _validate(String value, String fieldName) {
    String _field =
        "${fieldName[0].toUpperCase()}${fieldName.substring(1).toLowerCase()}";
    if (isRequired != null && isRequired && (value == null || value.isEmpty)) {
      return "$_field is required!";
    }

    if (minLength != null &&
        (value != null && value.isNotEmpty && value.length < minLength)) {
      return "Minimum $minLength characters required!";
    }
    if (checkPassword != null &&
        (value != null && value.isNotEmpty && value != checkPassword)) {
      return "Password didn't match";
    }
    if (maxLength != null &&
        (value != null && value.isNotEmpty && value.length > maxLength)) {
      return "Maximum $maxLength characters allowed!";
    }
    if (isEmail &&
        (value != null &&
            value.isNotEmpty &&
            !RegExp(_emailPattern).hasMatch(value))) {
      return "Invalid email address!";
    }
    if (isInt) {
      if (value != null && value.isNotEmpty && int.tryParse(value) == null) {
        return 'Not a valid Integer';
      }
    }
    if (isNumber &&
        (value != null && value.isNotEmpty && double.tryParse(value) == null)) {
      return "Not a valid number!";
    }

    if (customCheck != null) return customCheck(value);
    return "";
  }

  ///validate all in the same time
  ///even if there are on unvalid will continue validating
  static bool validateAll(List<CustomTextFieldController> controllers) {
    bool valid = true;

    for (var c in controllers) if (!c.isValid) valid = false;

    return valid;
  }
}

final String _emailPattern =
    r"^[-!#$%&'*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&'*+/0-9=?A-Z^_a-z{|}~])*@[a-zA-Z](-?[a-zA-Z0-9])*(\.[a-zA-Z](-?[a-zA-Z0-9])*)+$";
