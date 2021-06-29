import 'package:flutter/material.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';

import '../presentation.dart';

class CustomPhoneNumberField extends StatefulWidget {
  final CustomTextFieldController controller;
  final Function(Country) countryChange;
  final Country initialCountry;
  final Validate validate;

  const CustomPhoneNumberField({
    Key key,
    this.controller,
    this.countryChange,
    this.initialCountry,
    this.validate,
  }) : super(key: key);

  @override
  _CustomPhoneNumberState createState() => _CustomPhoneNumberState();
}

class _CustomPhoneNumberState extends State<CustomPhoneNumberField> {
  Country c;

  @override
  void initState() {
    c = widget.initialCountry;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CountryPicker(
          dense: false,
          showFlag: true, //displays flag, true by default
          showDialingCode: true, //displays dialing code, false by default
          showName: false, //displays country name, true by default
          showCurrency: false, //eg. 'British pound'
          onChanged: (Country country) {
            setState(() {
              c = country;
              widget.countryChange?.call(country);
            });
          },
          selectedCountry: c,
        ),
        Expanded(
          child: CustomTextField(
            title: "Contact Number",
            controller: widget.controller,
            validate:  Validate.withOption(
              isRequired: true,
              isNumber: true,
            ),
          ),
        ),
      ],
    );
  }
}
