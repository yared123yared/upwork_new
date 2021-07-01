import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;

import '../itembloc/bloc.dart' as itembloc;
import '../listbloc/bloc.dart' as listbloc;
import 'package:complex/newentityfeatures/trips/model/models/route_points.dart';

class PointOfInterestForm extends StatefulWidget {
  final RoutePointsModel routePoint;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  PointOfInterestForm({
    @required this.routePoint,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _PointOfInterestFormState createState() => _PointOfInterestFormState();
}

class _PointOfInterestFormState extends State<PointOfInterestForm> {
  CustomTextFieldController _pointControllerText = CustomTextFieldController();
  CustomTextFieldController _latitudeControllerText =
      CustomTextFieldController();
  CustomTextFieldController _longitudeControllerText =
      CustomTextFieldController();
  CustomTextFieldController _shortCodeControllerText =
      CustomTextFieldController();
  CustomTextFieldController _stateControllerText = CustomTextFieldController();
  CustomTextFieldController _townControllerText = CustomTextFieldController();
  CustomTextFieldController _zipCodeControllerText =
      CustomTextFieldController();
  CustomTextFieldController _cityControllerText = CustomTextFieldController();
  CustomTextFieldController _districtControllerText =
      CustomTextFieldController();
//  bool _isUpdate = false;

  @override
  void initState() {
    super.initState();
    // In case the routePoint provided is null, then we're creating new routePoint point, otherwise we editing it
    if (widget.routePoint != null) {
      init();
    }
  }

  Future init() async {
    Future.delayed(Duration(milliseconds: 80), () {
      _pointControllerText.text = widget.routePoint.pointName;
      _latitudeControllerText.text =
          widget.routePoint.geoPoint.latitude.toString();
      _longitudeControllerText.text =
          widget.routePoint.geoPoint.longitude.toString();
      _shortCodeControllerText.text = widget.routePoint.shortCode;
      _stateControllerText.text = widget.routePoint.state;
      _townControllerText.text = widget.routePoint.town;
      _zipCodeControllerText.text = widget.routePoint.zipCode;
      _cityControllerText.text = widget.routePoint.city;
      _districtControllerText.text = widget.routePoint.district;
    });
  }

  bool _validate() {
    return _pointControllerText.isValid &&
        _latitudeControllerText.isValid &&
        _longitudeControllerText.isValid &&
        _shortCodeControllerText.isValid &&
        _stateControllerText.isValid &&
        _townControllerText.isValid &&
        _zipCodeControllerText.isValid;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.PointOfInterestBloc()
        ..add(
          itembloc.getForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Exam Form'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.PointOfInterestBloc,
            itembloc.PointOfInterestState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            if (widget.routePoint != null) {
              init();
            }
          }
        }, child: BlocBuilder<itembloc.PointOfInterestBloc,
            itembloc.PointOfInterestState>(builder: (context, state) {
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
                InAppTitle(
                  title: 'Point of Interest',
                ),
                CustomTextField(
                  title: "Point Name",
                  controller: _pointControllerText,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomTextField(
                    title: "Latitude",
                    controller: _latitudeControllerText,
                    validate:
                        Validate.withOption(isRequired: true, isNumber: true)),
                CustomTextField(
                  title: "Longitude",
                  controller: _longitudeControllerText,
                  validate:
                      Validate.withOption(isRequired: true, isNumber: true),
                ),
                CustomTextField(
                  title: "State",
                  controller: _stateControllerText,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomTextField(
                  title: "Town",
                  controller: _townControllerText,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomTextField(
                  title: "Zip Code",
                  controller: _zipCodeControllerText,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomTextField(
                  title: "Short Code",
                  controller: _shortCodeControllerText,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomTextField(
                  title: "City",
                  controller: _cityControllerText,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomTextField(
                  title: "District",
                  controller: _districtControllerText,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: CustomActionButton(
                title: "Back",
                isExpanded: true,
                isOutline: true,
                margin:
                    EdgeInsets.only(left: 24, bottom: 24, right: 8, top: 20),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Expanded(
                child: CustomActionButton(
              title: "Confirm",
              isExpanded: true,
              isOutline: true,
              state: ButtonState.idle, //buttonState,
              margin: EdgeInsets.only(left: 8, bottom: 24, right: 8, top: 20),
              onTap: () {
                /// If the routePoint point object provided is null then we're in create mode,
                /// edit mode otherwise .
                if (_validate()) {
                  if (widget.routePoint != null) {
                    // Edit mode.
                    BlocProvider.of<itembloc.PointOfInterestBloc>(context).add(
                      itembloc.updateItem(
                        item: extractRoutePoint(),
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                      ),
                    );
                  } else {
                    // Create mode.
                    BlocProvider.of<itembloc.PointOfInterestBloc>(context).add(
                      itembloc.createItem(
                        item: extractRoutePoint(),
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                      ),
                    );
                  }
                }
              },
            )),
          ],
        ),
      ],
    );
  }

  // Used to extract a RoutePointsModel object from the text fields.
  RoutePointsModel extractRoutePoint() {
    return RoutePointsModel(
      city: _cityControllerText.text,
      docId: widget.routePoint?.docId ?? '',
      district: _districtControllerText.text,
      geoPoint: GeoPoint(
        double.parse(_latitudeControllerText.text),
        double.parse(_longitudeControllerText.text),
      ),
      pointName: _pointControllerText.text,
      shortCode: _shortCodeControllerText.text,
      state: _stateControllerText.text,
      town: _townControllerText.text,
      zipCode: _zipCodeControllerText.text,
    );
  }
}
