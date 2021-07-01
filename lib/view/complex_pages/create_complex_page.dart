import 'package:complex/blocs/bloc_manager.dart';
import 'package:complex/blocs/complex_bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/response/user_response/complex_model.dart';
import 'package:complex/data/providers/auth_provider.dart';
import 'package:complex/main.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injector/injector.dart';
import 'package:provider/provider.dart';

import 'custom_address_picker.dart';

class CreateComplexPage extends StatefulWidget {
  final bool update;
  final ComplexModel complexModel;

  CreateComplexPage({this.update = false, this.complexModel});

  @override
  _ComplexFormState createState() => _ComplexFormState();
}

class _ComplexFormState extends State<CreateComplexPage> {
  CustomTextFieldController _complexName = CustomTextFieldController();
  CustomTextFieldController _address = CustomTextFieldController();
  CustomTextFieldController _town = CustomTextFieldController();
  CustomTextFieldController _state = CustomTextFieldController();
  CustomTextFieldController _zipcode = CustomTextFieldController();
  CustomTextFieldController _latitude = CustomTextFieldController();
  CustomTextFieldController _longitude = CustomTextFieldController();
  CustomTextFieldController _complexType = CustomTextFieldController();
  CustomTextFieldController _buildingType = CustomTextFieldController();
  CustomTextFieldController _startDateController = CustomTextFieldController();
  CustomTextFieldController _endDateController = CustomTextFieldController();
  int index = 0;
  var _key = GlobalKey<ScaffoldState>();
  DateTime _endDate;
  DateTime _startDate;
  bool _hasSecurity = false;
  bool _isActive = true;

  ComplexBloc _complexBloc;
  bool _isLoading = false;

  var _authProvider = Injector.appInstance.get<AuthProvider>();
  ComplexModel _comlex;

  bool _validate(int i) {
    bool valid = true;
    if (i == 0) {
      if (!_complexName.isValid) valid = false;
      if (!_address.isValid) valid = false;
      if (!_town.isValid) valid = false;
      if (!_state.isValid) valid = false;
      if (!_latitude.isValid) valid = false;
      if (!_longitude.isValid) valid = false;
    } else if (widget.update) {
      if (!_complexType.isValid) valid = false;
      if (!_buildingType.isValid) valid = false;
      if (_startDate.isAfter(_endDate)) {
        Utility.showSnackBar(
            key: _key, message: "End Date must be after start date");
        return false;
      }
    } else {
      valid = false;
    }
    return valid;
  }

  @override
  void initState() {
    _startDate = DateTime.now();
    _endDate = DateTime.now();
    _hasSecurity = false;
    _isActive = false;
    super.initState();
  }

  void _handleCreateUser(CreateComplexState state) {
    switch (state.apiState) {
      case ApiStatus.LOADING:
        _isLoading = true;
        break;
      case ApiStatus.SUCCESS:
        _isLoading = false;
        Navigator.pop(context);
        break;
      case ApiStatus.ERROR:
        _isLoading = false;
        Utility.showSnackBar(key: _key, message: state.message);
        break;
      case ApiStatus.INITIAL:
        break;
    }
  }

  void _handleUpdateUser(UpdateComplexState state) {
    switch (state.apiState) {
      case ApiStatus.LOADING:
        _isLoading = true;
        break;
      case ApiStatus.SUCCESS:
        _isLoading = false;
        Navigator.pop(context);
        break;
      case ApiStatus.ERROR:
        _isLoading = false;
        print(state.message);
        Utility.showSnackBar(key: _key, message: state.message);
        break;
      case ApiStatus.INITIAL:
        break;
    }
  }

  void _handleGetComplex(GetComplexDetailState state) {
    switch (state.apiState) {
      case ApiStatus.LOADING:
        _isLoading = true;
        break;
      case ApiStatus.SUCCESS:
        _isLoading = false;
        if (state.response.data != null) _setData(state.response.data);
        break;
      case ApiStatus.ERROR:
        _isLoading = false;
        Utility.showSnackBar(key: _key, message: state.message);
        break;
      case ApiStatus.INITIAL:
        break;
    }
  }

  _setData(ComplexModel data) {
    _comlex = data;
    _complexType.text = data.complexType;
    _buildingType.text = data.buildingType;
    _complexName.text = data.complexName;
    _address.text = data.address;
    _town.text = data.town;
    _state.text = data.state;
    _zipcode.text = data.zipCode.toString();
    _latitude.text = data.latitude.toString();
    _longitude.text = data.longitude.toString();
    _hasSecurity = data.hasSecurity;
    _startDate = data.startDate;
    _endDate = data.endDate;
    _isActive = data.isActive;
  }

  @override
  Widget build(BuildContext context) {
    Application(context);
    _complexBloc = Provider.of<ComplexBloc>(context);
    return WillPopScope(
      onWillPop: () async {
        if (widget.update)
          return true;
        else {
          if (index == 1) {
            setState(() {
              index = 0;
            });
          } else {
            return true;
          }
        }
        return false;
      },
      child: BlocManager(
        initState: (BuildContext context) {
          if (widget.update)
            _complexBloc.add(
              GetComplexDetailEvent(id: widget.complexModel.createdBy),
            );
        },
        child: BlocListener<ComplexBloc, ComplexState>(
          listener: (BuildContext context, ComplexState state) {
            if (state is CreateComplexState) _handleCreateUser(state);
            if (state is UpdateComplexState) _handleUpdateUser(state);
            if (state is GetComplexDetailState) _handleGetComplex(state);
          },
          child: BlocBuilder<ComplexBloc, ComplexState>(
            builder: (BuildContext context, ComplexState state) {
              return Scaffold(
                key: _key,
                appBar: AppBar(
                  title: Text(
                    'Complex Manager',
                    style: Styles.boldText(color: Colors.white, size: 18),
                  ),
                ),
                body: ScreenWithLoader(
                  isLoading: _isLoading,
                  body: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Center(child: _progress()),
                        _firstForm(),
                        CustomButton(
                          text: widget.update
                              ? index == 1
                                  ? 'Submit'
                                  : 'Next'
                              : index == 1
                                  ? 'Submit'
                                  : 'Next',
                          borderColor: ColorConstants.primaryColor,
                          onTap: () async {
                            FocusScope.of(context).unfocus();
                            if (widget.update) {
                              if (index == 0) {
                                setState(() {
                                  index = 1;
                                });
                              } else {
                                if (_validate(0)) {
                                  ComplexModel _complex =
                                      _comlex ?? ComplexModel();
                                  _complex = _complex.copyWith(
                                    complexType: _complexType.text,
                                    buildingType: _buildingType.text,
                                    deviceAllowed: [],
                                    createdBy: _authProvider.getUId(),
                                    createdDateTime: DateTime.now(),
                                    complexName: _complexName.text,
                                    address: _address.text,
                                    town: _town.text,
                                    state: _state.text,
                                    zipCode: double.parse(_zipcode.text),
                                    latitude: double.parse(_latitude.text),
                                    longitude: double.parse(_longitude.text),
                                    hasSecurity: _hasSecurity,
                                    startDate: _startDate,
                                    endDate: _endDate,
                                    isActive: _isActive,
                                  );
                                  _complexBloc.add(
                                    UpdateComplexEvent(request: _complex),
                                  );
                                }
                              }
                            } else {
                              if (index == 0) {
                                setState(() {
                                  index = 1;
                                });
                              } else {
                                if (_validate(0)) {
                                  ComplexModel _complex =
                                      widget.complexModel ?? ComplexModel();
                                  _complex = _complex.copyWith(
                                    complexType: _complexType.text,
                                    buildingType: _buildingType.text,
                                    deviceAllowed: [],
                                    createdBy: _authProvider.getUId(),
                                    createdDateTime: DateTime.now(),
                                    complexName: _complexName.text,
                                    address: _address.text,
                                    town: _town.text,
                                    state: _state.text,
                                    zipCode: double.parse(_zipcode.text),
                                    latitude: double.parse(_latitude.text),
                                    longitude: double.parse(_longitude.text),
                                    hasSecurity: _hasSecurity,
                                    startDate: _startDate,
                                    endDate: _endDate,
                                    isActive: _isActive,
                                  );
                                  _complexBloc.add(
                                    CreateComplexEvent(request: _complex),
                                  );
                                }
                              }
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _firstForm() {
    return Expanded(
      child: ListView(
        children: <Widget>[
          CustomTextField(
            title: "Complex Name",
            controller: _complexName,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomAddressPicker(
            title: "Address",
            controller: _address,
            validate: Validate.withOption(isRequired: true, maxLength: 250),
            displayData: (l) => l.address,
            onPickLocation: (l) {
              _town.text = l.town;
              _state.text = l.state;
              _zipcode.text = l.zipCode;
              _latitude.text = l.latitude.toString();
              _longitude.text = l.longitude.toString();
            },
          ),
          CustomTextField(
            title: "Town",
            controller: _town,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomTextField(
            title: "State",
            controller: _state,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomTextField(
            title: "Zip Code",
            controller: _zipcode,
            validate: Validate.withOption(
              isNumber: true,
              isRequired: true,
            ),
          ),
          CustomTextField(
            enabled: false,
            title: "Latitude",
            controller: _latitude,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomTextField(
            enabled: false,
            title: "Longitude",
            controller: _longitude,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          Utility.size(height: 20),
          Visibility(
            visible: index == 1,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Has Security ?",
                      style: Styles.lightText(size: 16),
                    ),
                    Spacer(),
                    CupertinoSwitch(
                      onChanged: (value) {
                        setState(() {
                          _hasSecurity = value;
                        });
                      },
                      value: _hasSecurity,
                      activeColor: ColorConstants.primaryColor,
                    ),
                  ],
                ),
                Utility.size(height: 20),
                Row(
                  children: [
                    Text(
                      "Is Active ?",
                      style: Styles.lightText(size: 16),
                    ),
                    Spacer(),
                    CupertinoSwitch(
                      onChanged: (value) {
                        setState(() {
                          _isActive = value;
                        });
                      },
                      value: _isActive,
                      activeColor: ColorConstants.primaryColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Utility.size(height: 30),
        ],
      ),
    );
  }

  _progress() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    border: Border.all(
                        color: ColorConstants.primaryColor, width: 2),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "1",
                    style: Styles.semiBoldText(
                        size: 22, color: ColorConstants.primaryColor),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: 5,
                  color: index == 1
                      ? ColorConstants.primaryColor
                      : Colors.grey.withOpacity(0.3),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    border: Border.all(
                        color: index == 1
                            ? ColorConstants.primaryColor
                            : Colors.grey.withOpacity(0.3),
                        width: 2),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "2",
                    style: Styles.semiBoldText(
                        size: 22,
                        color: index == 1
                            ? ColorConstants.primaryColor
                            : Colors.grey.withOpacity(0.3)),
                  ),
                ),
              ],
            ),
            Utility.size(height: 3),
            Row(
              children: [
                Container(
                  width: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "Basic\ninfo",
                    style: Styles.lightText(
                      size: 10,
                      color: ColorConstants.primaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: 5,
                  color: Colors.transparent,
                ),
                Container(
                  width: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "Additional\ninfo",
                    style: Styles.lightText(
                      size: 10,
                      color: index == 1
                          ? ColorConstants.primaryColor
                          : Colors.grey.withOpacity(0.5),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
