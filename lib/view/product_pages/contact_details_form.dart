import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/custom_dropdown.dart';
import 'package:complex/common/widgets/custom_switch.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/common/widgets/group_title.dart';
import 'package:complex/view/product_pages/saved_address.dart';
import 'package:complex/utils/next_page_routing.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ContactDetailsForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContactDetailsFormState();
  }
}

class _ContactDetailsFormState extends State<ContactDetailsForm> {
  bool _emailShare = true;
  bool _phoneShare = true;
  bool _addressShare = true;
  bool _locationValue = true;

  CustomTextFieldController _nameController = CustomTextFieldController();
  CustomTextFieldController _emailController = CustomTextFieldController();
  CustomTextFieldController _areaSectorController = CustomTextFieldController();
  CustomTextFieldController _societyNameController =
      CustomTextFieldController();
  CustomTextFieldController _unitNumberController = CustomTextFieldController();
  CustomTextFieldController _stateController = CustomTextFieldController();
  CustomTextFieldController _districtController = CustomTextFieldController();
  CustomTextFieldController _villageController = CustomTextFieldController();

  List<String> _stateList = ['unit_1', 'unit_2'];
  List<String> _districtList = ['size_1', 'size_2'];
  List<String> _villageList = ['color_1', 'color_2'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contact Details'),
          leading: Container(),
          backgroundColor: ColorConstants.greenColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(children: [_renderForm()]),
        ));
  }

  Widget _renderForm() {
    return SingleChildScrollView(
        child: Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 20)),
        _renderTextField('Name', _nameController),
        _renderNameShare(),
        _renderTextField('Email', _emailController),
        _renderEmailShare(),
        _renderGroupTitle(),
        _renderLocationArea(),
        _renderDropDown("Select your State", _stateController, _stateList),
        _renderDropDown(
            "Select your District", _districtController, _districtList),
        _renderDropDown(
            "Select your Village", _villageController, _villageList),
        _renderTextField('Area/Sector', _areaSectorController),
        _renderTextField('Society Name', _societyNameController),
        _renderTextField('House/unit number', _unitNumberController),
        _renderMapTitle(),
        _renderMap(),
        _renderAddressShare(),
        CustomButton(
          text: "NEXT",
          onTap: () {},
          borderColor: ColorConstants.primaryColor,
        )
      ],
    ));
  }

  Widget _renderTextField(String text, CustomTextFieldController controller) {
    return CustomTextField(
      title: text,
      controller: controller,
      validate: Validate.withOption(
        isRequired: true,
      ),
    );
  }

  Widget _renderNameShare() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Share Name?', style: Styles.normalText()),
            _renderCheckBox(
                checkValue: _phoneShare,
                onChange: () {
                  _phoneShare = !_phoneShare;
                })
          ],
        ));
  }

  Widget _renderEmailShare() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Share Email?',
              style: Styles.normalText(),
            ),
            _renderCheckBox(
                checkValue: _emailShare,
                onChange: () {
                  _emailShare = !_emailShare;
                })
          ],
        ));
  }

  Widget _renderDropDown(
      String text, CustomTextFieldController controller, List<String> items) {
    return CustomDropDownList<String>(
      title: text,
      controller: controller,
      loadData: () async => items,
      displayName: (x) => x,
      validate: Validate.withOption(
        isRequired: true,
      ),
    );
  }

  Widget _renderMapTitle() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(children: [
          Text(
            'Mark Your Location',
            style: Styles.normalText(),
          )
        ]));
  }

  Widget _renderMap() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: 139,
        color: Colors.green,
        alignment: Alignment.center,
        child: Text('here will be map',
            style: TextStyle(color: Colors.white, fontSize: 18)));
  }

  Widget _renderAddressShare() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Share Address?',
              style: Styles.normalText(),
            ),
            _renderCheckBox(
                checkValue: _addressShare,
                onChange: () {
                  _addressShare = !_addressShare;
                })
          ],
        ));
  }

  Widget _renderGroupTitle() {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: GroupTitle(
          padding: EdgeInsets.all(20),
          text: 'Location of Product',
          widget: InkWell(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          width: 1,
                          color: ColorConstants.greenColor.withOpacity(0.6))),
                  height: 36,
                  alignment: Alignment.center,
                  child: Text(
                    'Use Saved Address',
                    style: TextStyle(fontSize: 12),
                  )),
              onTap: () {
                Navigator.push(
                  context,
                  NextPageRoute(SavedAddress()),
                );
              }),
        ));
  }

  Widget _renderLocationArea() {
    Widget _renderIcon() {
      return Icon(
        Icons.location_on,
        size: 22,
        color: ColorConstants.greenColor,
      );
    }

    Widget _renderText() {
      return Text(
        'Use Current Location',
        style: TextStyle(fontSize: 18, color: ColorConstants.darkGreyColor),
      );
    }

    Widget _renderTitle() {
      return Row(
        children: [
          _renderIcon(),
          _renderText(),
        ],
      );
    }

    return Padding(
        padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
        child: InkWell(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              _renderTitle(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomSwitch(
                    activeColor: ColorConstants.greenColor,
                    value: _locationValue,
                    onChanged: (value) {
                      setState(() {
                        _locationValue = value;
                      });
                    },
                  ),
                ],
              ),
            ])));
  }

  Widget _renderCheckBox(
      {@required bool checkValue, @required Function onChange}) {
    return Row(
      children: [
        _renderCheckBoxArea('yes', checkValue, () {
          if (checkValue) {
            return;
          }

          setState(() {
            onChange();
          });
        }),
        _renderCheckBoxArea('no', !checkValue, () {
          if (!checkValue) {
            return;
          }
          setState(() {
            onChange();
          });
        }),
      ],
    );
  }

  Widget _renderCheckBoxArea(String text, bool _checkValue, Function onChange) {
    return Container(
        padding: EdgeInsets.only(right: 5),
        child: InkWell(
            onTap: () {
              onChange();
            },
            child: Row(children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border:
                        Border.all(color: ColorConstants.greenColor, width: 2)),
                child: Container(
                    margin: const EdgeInsets.all(3.0),
                    child: _checkValue
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: ColorConstants.greenColor,
                              height: 10,
                              width: 10,
                            ))
                        : Container(
                            color: Colors.transparent,
                            width: 10,
                            height: 10,
                          )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(text, style: TextStyle(fontSize: 15)),
              ),
            ])));
  }
}
