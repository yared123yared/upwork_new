import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import '../model/building_model.dart';
import 'package:complex/newentityfeatures/Models/building_model.dart';

import 'package:complex/common/presentation.dart';

import 'package:complex/data/screen_size.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;
import '../itembloc/bloc.dart' as itembloc;

class BuildingForm extends StatefulWidget {
  final BuildingModel buildingModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;
  BuildingForm(
      {this.buildingModel,
      @required this.entitytype,
      @required this.entityid,
      @required this.givenreloadaction});

  @override
  _BuildingFormState createState() => _BuildingFormState();
}

class _BuildingFormState extends State<BuildingForm> {
  CustomTextFieldController _buildingName = CustomTextFieldController();
  CustomTextFieldController _address = CustomTextFieldController();
  CustomTextFieldController _latitude = CustomTextFieldController();
  CustomTextFieldController _longitude = CustomTextFieldController();
  CustomTextFieldController _attachedGate = CustomTextFieldController();
  bool _isUpdate = false;
  itembloc.BuildingModelBloc mbloc;
  //validate all items
  bool _validate() {
    return Validate.validateAll([
      _buildingName,
      _address,
      _latitude,
      _longitude,
      _attachedGate,
    ]);
  }

  @override
  void initState() {
    _isUpdate = widget.buildingModel != null;
    super.initState();
    mbloc = new itembloc.BuildingModelBloc();
    mbloc.add(itembloc.getForNewEntry(
        entitytype: widget.entitytype, entityid: widget.entityid));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: mbloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Building'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.BuildingModelBloc,
            itembloc.BuildingModelState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }
        }, child: BlocBuilder<itembloc.BuildingModelBloc,
            itembloc.BuildingModelState>(builder: (context, state) {
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

  @override
  Widget _blocBuilder(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InAppTitle(title: 'Building Details'),
                Column(
                  children: <Widget>[
                    CustomTextField(
                      initialValue: widget.buildingModel?.buildingName,
                      title: "Building Name",
                      controller: _buildingName,
                      autoFocus: true,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      initialValue: widget.buildingModel?.attachedGate?.length
                          ?.toString(),
                      title: "Attached Gates",
                      controller: _attachedGate,
                      validate:
                          Validate.withOption(isRequired: true, isNumber: true),
                    ),
                    CustomAddressPicker(
                      initialValue: widget.buildingModel?.address,
                      controller: _address,
                      displayData: (l) => l.address,
                      validate: Validate.withOption(isRequired: true),
                      onPickLocation: (l) {
                        _latitude.text = l.latitude.toString();
                        _longitude.text = l.longitude.toString();
                      },
                    ),
                    CustomTextField(
                      initialValue: widget.buildingModel?.latitude?.toString(),
                      enabled: false,
                      title: "Latitude",
                      controller: _latitude,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomTextField(
                      initialValue: widget.buildingModel?.longitude?.toString(),
                      enabled: false,
                      title: "Longitude",
                      controller: _longitude,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        CustomActionButton(
          title: _isUpdate ? "Update" : "Add",
          color: Theme.of(context).primaryColor,
          // gradient: C.bgGradient,
          padding: EdgeInsets.symmetric(vertical: height * 1.5),
          margin: EdgeInsets.symmetric(
              horizontal: width * 25, vertical: height * 3),
          onTap: () async {
            {
              if (_validate()) {
                List<String> _gates = [];
                for (int i = 0; i < int.parse(_attachedGate.text); i++) {
                  _gates.add("gate ${i + 1}");
                }
                BuildingModel _buildingModel = BuildingModel(
                  buildingName: _buildingName.text,
                  buildingID: _isUpdate
                      ? widget.buildingModel.buildingID
                      : _buildingName.text,
                  latitude: double.parse(_latitude.text),
                  longitude: double.parse(_longitude.text),
                  attachedGate: _gates,
                  address: _address.text,
                );
                if (_isUpdate) {
                  mbloc.add(itembloc.updateItem(
                      item: _buildingModel,
                      entityid: widget.entityid,
                      entitytype: widget.entitytype));
                } else {
                  mbloc.add(itembloc.createItem(
                      item: _buildingModel,
                      entityid: widget.entityid,
                      entitytype: widget.entitytype));
                }
              }
            }
          },
        ),
      ],
    );
  }
}
