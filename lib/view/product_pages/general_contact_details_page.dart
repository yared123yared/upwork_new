import 'package:complex/data/models/response/product_models/property_model.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/custom_switch.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/view/job_pages/add_job_page.dart';
import 'package:complex/view/pet_pages/add_pet_page.dart';
import 'package:complex/view/product_pages/select_product_type.dart';
import 'package:complex/view/property/add_property_page.dart';
import 'package:complex/view/vehicle/vehicle_create_page.dart';
import 'package:complex/utils/next_page_routing.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

enum ContactOpenFrom { addProperty, vehicle, pet, product, job }

class GeneralContactDetailPage extends StatefulWidget {
  final ContactOpenFrom type;
  final bool isService;
  final String serviceId;
  final String serviceProviderId;

  GeneralContactDetailPage(
      {this.type,
      this.serviceId,
      this.isService = false,
      this.serviceProviderId});

  @override
  State<StatefulWidget> createState() {
    return _GeneralContactDetailPageState();
  }
}

class _GeneralContactDetailPageState extends State<GeneralContactDetailPage> {
  bool _emailShare = true;
  bool _phoneShare = true;
  bool _nameShare = true;
  bool _addressShare = true;
  bool _locationValue = false;

  CustomTextFieldController _nameController = CustomTextFieldController();
  CustomTextFieldController _emailController = CustomTextFieldController();
  CustomTextFieldController _areaSectorController = CustomTextFieldController();
  CustomTextFieldController _societyNameController =
      CustomTextFieldController();
  CustomTextFieldController _addressLine1Controller =
      CustomTextFieldController();
  CustomTextFieldController _stateController = CustomTextFieldController();
  CustomTextFieldController _districtController = CustomTextFieldController();
  CustomTextFieldController _villageController = CustomTextFieldController();
  Position position;
  CustomTextFieldController _phoneController = CustomTextFieldController();
  Placemark _address;
  var _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('Contact Details'),
        centerTitle: true,
        backgroundColor: ColorConstants.greenColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: _renderForm(),
    );
  }

  Widget _renderForm() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: Column(
          children: [
            _renderTextField('Name', _nameController),
            _renderNameShare(),
            _renderTextField('Phone', _phoneController, isPhone: true),
            _renderPhoneShare(),
            _renderTextField('Email', _emailController),
            _renderEmailShare(),
            // _renderGroupTitle(),
            _renderLocationArea(),
            _renderTextField('Select your State', _stateController),
            _renderTextField('Select your District', _districtController),
            _renderTextField('Select your Village', _villageController),
            _renderTextField('Area/Sector', _areaSectorController),
            _renderTextField('Society Name', _societyNameController),
            _renderTextField('Address Line 1', _addressLine1Controller),
            _renderAddressShare(),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              text: "NEXT",
              onTap: () {
                if (!_locationValue) {
                  Utility.showSnackBar(
                      key: _key,
                      message:
                          "Please enable location for better accessibility");
                } else if (_validate()) {
                  Contactdetails _contactDetail = Contactdetails(
                      name: _nameController.text.trim(),
                      phonenum: _phoneController.text.trim(),
                      sharephone: _phoneShare,
                      email: _emailController.text.trim(),
                      shareemail: _emailShare,
                      address: Address(
                        latitude: position?.latitude,
                        longitude: position?.longitude,
                        country: _address?.country,
                        state: _stateController.text.trim(),
                        district: _districtController.text.trim(),
                        townVillage: _villageController.text.trim(),
                        areaSector: _areaSectorController.text.trim(),
                        societyname: _societyNameController.text.trim(),
                        addressline: _addressLine1Controller.text.trim(),
                      ),
                      shareaddress: _addressShare);
                  if (widget.type == ContactOpenFrom.addProperty) {
                    Navigator.push(context,
                        NextPageRoute(AddPropertyPage(_contactDetail)));
                  } else if (widget.type == ContactOpenFrom.vehicle) {
                    Navigator.push(context,
                        NextPageRoute(VehicleCreatePage(_contactDetail)));
                  } else if (widget.type == ContactOpenFrom.pet) {
                    Navigator.push(
                        context, NextPageRoute(AddPetPage(_contactDetail)));
                  } else if (widget.type == ContactOpenFrom.job) {
                    Navigator.push(
                        context, NextPageRoute(AddJobPage(_contactDetail)));
                  } else if (widget.type == ContactOpenFrom.product) {
                    Navigator.push(
                      context,
                      NextPageRoute(
                        SelectProductType(
                          _contactDetail,
                          isService: widget.isService,
                          serviceId: widget.serviceId,
                          serviceProviderId: widget.serviceProviderId,
                        ),
                      ),
                    );
                  }
                }
              },
              borderColor: ColorConstants.primaryColor,
            )
          ],
        ),
      ),
    );
  }

  bool _validate() {
    bool vaild = true;
    if (!_nameController.isValid) vaild = false;
    if (!_phoneController.isValid) vaild = false;
    if (!_emailController.isValid) vaild = false;
    if (!_stateController.isValid) vaild = false;
    if (!_districtController.isValid) vaild = false;
    if (!_villageController.isValid) vaild = false;
    if (!_areaSectorController.isValid) vaild = false;
    if (!_societyNameController.isValid) vaild = false;
    if (!_addressLine1Controller.isValid) vaild = false;
    return vaild;
  }

  Widget _renderTextField(String text, CustomTextFieldController controller,
      {bool isPhone = false}) {
    return CustomTextField(
      title: text,
      controller: controller,
      validate: Validate.withOption(
        isRequired: true,
        isInt: isPhone,
        isNumber: isPhone,
      ),
    );
  }

  Widget _renderNameShare() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Share Name?', style: Styles.lightText(size: 16)),
          _renderCheckBox(
            checkValue: _nameShare,
            onChange: () {
              _nameShare = !_nameShare;
            },
          )
        ],
      ),
    );
  }

  Widget _renderPhoneShare() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Share Phone?', style: Styles.lightText(size: 16)),
          _renderCheckBox(
            checkValue: _phoneShare,
            onChange: () {
              _phoneShare = !_phoneShare;
            },
          )
        ],
      ),
    );
  }

  Widget _renderEmailShare() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Share Email?',
            style: Styles.lightText(size: 16),
          ),
          _renderCheckBox(
            checkValue: _emailShare,
            onChange: () {
              _emailShare = !_emailShare;
            },
          )
        ],
      ),
    );
  }

  Widget _renderAddressShare() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Share Address?',
            style: Styles.lightText(size: 16),
          ),
          _renderCheckBox(
            checkValue: _addressShare,
            onChange: () {
              _addressShare = !_addressShare;
            },
          )
        ],
      ),
    );
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
                    _determinePosition();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<Position> _determinePosition() async {
    try {
      Utility.permissionCheckForMap();
      position = await Geolocator.getCurrentPosition();
    } catch (e) {
      if (e is LocationServiceDisabledException) {
        Utility.showSnackBar(key: _key, message: e.toString());
        setState(() {
          _locationValue = false;
        });
      }
    }
    if (position != null) {
      _locationValue = true;
      var address =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      _address = address.first;
      print(_address.toJson());
      _stateController.text = _address.administrativeArea;
      _districtController.text = _address.subAdministrativeArea;
      _villageController.text = _address.locality;
      _areaSectorController.text = _address.subLocality;
    } else {
      _locationValue = false;
    }
    setState(() {});
  }

  Widget _renderCheckBox(
      {@required bool checkValue, @required Function onChange}) {
    return Row(
      children: [
        _renderCheckBoxArea('Yes', checkValue, () {
          if (checkValue) {
            return;
          }

          setState(() {
            onChange();
          });
        }),
        _renderCheckBoxArea('No', !checkValue, () {
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
        child: Row(
          children: [
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
          ],
        ),
      ),
    );
  }
}
