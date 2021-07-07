import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;

import '../itembloc/bloc.dart' as itembloc;
// import '../model/unit_model.dart';
import 'package:complex/newentityfeatures/Models/unit_model.dart';

// import 'package:complex/newentityfeatures/complex/building/model/building_model.dart';
import 'package:complex/newentityfeatures/Models/building_model.dart';

class UnitModelForm extends StatefulWidget {
  final UnitModel unitModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  UnitModelForm({
    @required this.unitModel,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _UnitModelFormState createState() => _UnitModelFormState();
}

class _UnitModelFormState extends State<UnitModelForm> {
  CustomTextFieldController _address = CustomTextFieldController();
  CustomTextFieldController _buildingName = CustomTextFieldController();
  CustomTextFieldController _floorNumber = CustomTextFieldController();
  CustomTextFieldController _noVisitorParking = CustomTextFieldController();
  CustomTextFieldController _noFixedParking = CustomTextFieldController();
  bool _isUpdate = false;

  bool isManager;
  bool isOwner;
  List<BuildingModel> buildingList;
  var btnState;

  bool _validate() {
    BuildingModel building = buildingList
        .firstWhere((element) => element.buildingName == _buildingName.text);
    return Validate.validateAll([
          _address,
          _buildingName,
          _floorNumber,
          _noVisitorParking,
          _noFixedParking,
        ]) &&
        // int.parse(_floorNumber.text) >= 0 &&
        int.parse(_floorNumber.text) <= building.numfloor;
  }

  void _initFiledValue() {
    if (widget.unitModel != null) {
      _isUpdate = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.UnitModelBloc()
        ..add(
          itembloc.getForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Unit Form'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.UnitModelBloc, itembloc.UnitModelState>(
            listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            isManager = state.isManager;
            isOwner = state.isOwner;
            buildingList = state.buildingList;
            btnState = state.btnState;

            _initFiledValue();
          }
        }, child: BlocBuilder<itembloc.UnitModelBloc, itembloc.UnitModelState>(
                builder: (context, state) {
          if (state is itembloc.IsBusy)
            return Center(
              child: Container(
                  width: 20, height: 20, child: CircularProgressIndicator()),
            );
          if (state is itembloc.HasLogicalFaliur)
            return Center(child: Text(state.error));
          if (state is itembloc.HasExceptionFaliur)
            return Center(child: Text(state.error));
          if (state is itembloc.HasExceptionFaliur)
            return Center(child: Text(state.error));

          if (state is itembloc.IsReadyForDetailsPage) {
            return _blocBuilder(context);
          }

          return Center(child: Text('Empty'));
        })),
      ),
    );
  }

  _blocBuilder(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CustomDropDownList<BuildingModel>(
                      initialValue: widget.unitModel?.buildingName,
                      enabled: /* isManager &&  */ !_isUpdate,
                      title: "Building Name",
                      controller: _buildingName,
                      loadData: () async => buildingList,
                      displayName: (x) => x.buildingName,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      initialValue: widget.unitModel?.address,
                      title: "Unit number",
                      controller: _address,
                      // enabled: false,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      initialValue: widget.unitModel?.floorNum?.toString(),
                      enabled: /* isManager &&  */ !_isUpdate,
                      title: "Floor Number",
                      controller: _floorNumber,
                      validate: Validate.withOption(
                        isRequired: true,
                        isNumber: true,
                      ),
                    ),
                    CustomTextField(
                      initialValue:
                          widget.unitModel?.numVisitorParking?.toString(),
                      // enabled: isManager,
                      title: "Number of Visitor Parking",
                      controller: _noVisitorParking,
                      validate: Validate.withOption(
                        isRequired: true,
                        isNumber: true,
                      ),
                    ),
                    CustomTextField(
                      initialValue:
                          widget.unitModel?.numFixedParking?.toString(),
                      // enabled: isManager,
                      title: "Number of Fixed  Parking",
                      controller: _noFixedParking,
                      validate: Validate.withOption(
                        isRequired: true,
                        isNumber: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // if (isManager)
        CustomActionButton(
          state: btnState,
          title: _isUpdate ? "Update" : "Add",
          gradient: C.bgGradient,
          padding: EdgeInsets.symmetric(vertical: height * 1.5),
          margin: EdgeInsets.symmetric(
            horizontal: width * 25,
            vertical: height * 3,
          ),
          onTap: () async {
            if (btnState == ButtonState.idle) {
              if (_validate()) {
                UnitModel _unitModel = UnitModel(
                  buildingName: _buildingName.text,
                  unitID: _isUpdate
                      ? widget.unitModel.unitID
                      : "${_buildingName.text}@${_floorNumber.text}@${_address.text}",
                  address: _address.text,
                  floorNum: int.parse(_floorNumber.text),
                  numFixedParking: int.parse(_noFixedParking.text),
                  numVisitorParking: int.parse(_noVisitorParking.text),
                );
                if (_isUpdate) {
                  BlocProvider.of<itembloc.UnitModelBloc>(context).add(
                    itembloc.updateItem(
                      // unitModel: _unitModel,
                      entityid: widget.entityid,
                      entitytype: widget.entitytype,
                      item: _unitModel,
                    ),
                  );
                } else {
                  BlocProvider.of<itembloc.UnitModelBloc>(context).add(
                    itembloc.createItem(
                      // unitModel: _unitModel,
                      entityid: widget.entityid,
                      entitytype: widget.entitytype,
                      item: _unitModel,
                    ),
                  );
                }
              }
            } else if (btnState == ButtonState.fail) {
              // BlocProvider.of<itembloc.UnitModelBloc>(context).add(
              //   UnitsListComplexEvent(),
              // );
            }
          },
        ),
      ],
    );
  }
}
