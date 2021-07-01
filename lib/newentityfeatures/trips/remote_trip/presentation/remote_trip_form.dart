import 'package:complex/common/widgets/custom_switchWithTitle.dart';
import 'package:complex/newentityfeatures/trips/remote_trip/repo/remotetrip_repository.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;
import 'package:complex/newentityfeatures/Models/assignment_model.dart';
import 'package:complex/common/widgets/date_time_picker_newentity.dart'
    as newentitytimepicker;

import '../itembloc/bloc.dart' as itembloc;
import '../listbloc/bloc.dart' as listbloc;
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';

class RemoteTripForm extends StatefulWidget {
  final RemoteTripData vrAssignmentModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  RemoteTripForm({
    @required this.vrAssignmentModel,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _RemoteTripFormState createState() => _RemoteTripFormState();
}

class _RemoteTripFormState extends State<RemoteTripForm> {
  int timelineIndex = 1;

  CustomTextFieldController _serviceProviderName = CustomTextFieldController();
  CustomTextFieldController _serviceProviderPhoneNumber =
      CustomTextFieldController();
  CustomTextFieldController _serviceProviderId = CustomTextFieldController();
  CustomTextFieldController _startDate = CustomTextFieldController();
  CustomTextFieldController _endDate = CustomTextFieldController();
  CustomTextFieldController _uploadPhoto = CustomTextFieldController();
  bool _regular = false;

  List<String> _serviceProviders;
  // List<String> _serviceProvider = [
  //   'Service Provider 1',
  //   'Service Provider 2',
  //   'Service Provider 3',
  //   'Service Provider 4',
  // ];

  CustomTextFieldController _routePageServiceProviderId =
      CustomTextFieldController();
  CustomTextFieldController _userType = CustomTextFieldController();
  CustomTextFieldController _route = CustomTextFieldController();
  CustomTextFieldController _userID = CustomTextFieldController();
  CustomTextFieldController _username = CustomTextFieldController();
  CustomTextFieldController _userPhoneNumber = CustomTextFieldController();
  CustomTextFieldController _userEmailAddress = CustomTextFieldController();
  CustomTextFieldController _appUserID = CustomTextFieldController();
  bool _routePageRegular = false;

  List<String> _trips;
  // List<String> trip = [
  //   'Trip 1',
  //   'Trip 2',
  //   'Trip 3',
  //   'Trip 4',
  // ];

  bool _validate() {
    if (timelineIndex == 1) {
      return _serviceProviderName.isValid &&
          _serviceProviderPhoneNumber.isValid &&
          _serviceProviderId.isValid &&
          _startDate.isValid &&
          _endDate.isValid &&
          _uploadPhoto.isValid;
    } else if (timelineIndex == 3) {
      return _routePageServiceProviderId.isValid &&
          _userType.isValid &&
          _route.isValid &&
          _userID.isValid &&
          _username.isValid &&
          _userPhoneNumber.isValid &&
          _userEmailAddress.isValid &&
          _appUserID.isValid;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.RemoteTripBloc()
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
        body: BlocListener<itembloc.RemoteTripBloc, itembloc.RemoteTripState>(
            listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }
          if (state is itembloc.RemoteTripRouteListState) {
            setState(() {
              _trips = state.trip ?? [];
            });
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            // sessiontermlist = state.sessiontermlist;

            // _initFiledValue();
          }
        }, child:
                BlocBuilder<itembloc.RemoteTripBloc, itembloc.RemoteTripState>(
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
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: height * 4),
        Expanded(
          child: FlowBuilder<int>(
              state: timelineIndex,
              onGeneratePages: (dynamic data, List<Page> pages) {
                return [
                  if (timelineIndex == 1) MaterialPage(child: screen1()),
                  if (timelineIndex == 2) MaterialPage(child: screen2()),
                  if (timelineIndex == 3) MaterialPage(child: screen3()),
                ];
              }),
        ),
      ],
    );
  }

  Widget screen1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InAppTitle(
                  title: 'Remote Trip Allocation',
                ),
                Column(
                  children: <Widget>[
                    CustomTextField(
                      title: "Service Provider Name",
                      controller: _serviceProviderName,
                      validate: Validate.withOption(
                        isRequired: false,
                      ),
                    ),
                    CustomTextField(
                      title: "Service Provider Phone Number",
                      controller: _serviceProviderPhoneNumber,
                      validate: Validate.withOption(
                        isRequired: false,
                      ),
                    ),
                    CustomTextField(
                      title: "Service Provider ID",
                      controller: _serviceProviderId,
                      validate: Validate.withOption(
                        isRequired: false,
                      ),
                    ),
                    CustomTextField(
                      title: "Start Date",
                      controller: _startDate,
                      validate: Validate.withOption(
                        isRequired: false,
                      ),
                    ),
                    CustomTextField(
                      title: "End Date",
                      controller: _endDate,
                      validate: Validate.withOption(
                        isRequired: false,
                      ),
                    ),
                    CustomTextField(
                      title: "Upload Photo",
                      controller: _uploadPhoto,
                      validate: Validate.withOption(
                        isRequired: false,
                      ),
                    ),
                  ],
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
                isExpanded: false,
                isOutline: false,
                margin:
                    EdgeInsets.only(left: 24, bottom: 24, right: 8, top: 44),
                onTap: () {
                  Navigator.pop(context);

                  // BlocProvider.of<RemoteTripBloc>(context)
                  //     .add(RemoteTripServiceProviderListEvent());
                },
              ),
            ),
            Expanded(
              child: CustomActionButton(
                title: "Next",
                isExpanded: false,
                margin:
                    EdgeInsets.only(left: 8, bottom: 24, right: 24, top: 44),
                onTap: () {
                  setState(() {
                    timelineIndex++;
                  });

                  BlocProvider.of<itembloc.RemoteTripBloc>(context).add(
                    itembloc.RemoteTripRouteListEvent(
                      entityid: widget.entityid,
                      entitytype: widget.entitytype,
                    ),
                  );
//                        if(_validate()){
//
//                             }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget screen2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              InAppTitle(
                title: 'Remote Trip Allocation',
                subtitle: 'view/add/edit Route',
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _trips.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CommonListTile(
                      listState: ListStateClass(
                        title: _trips[index],
//                          subtitle: 'View Trip List',
                        tapAction: () {
                          setState(() {
                            timelineIndex--;
                          });

                          // BlocProvider.of<RemoteTripBloc>(context)
                          // .add(EditRemoteTripRouteEvent());
                        },

                        editAction: () {
                          setState(() {
                            timelineIndex++;
                          });
                          // BlocProvider.of<RemoteTripBloc>(context)
                          //     .add(EditRemoteTripRouteEvent());
                        },
                      ),
                    );
                  })
            ],
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
                    EdgeInsets.only(left: 24, bottom: 24, right: 8, top: 44),
                onTap: () {
                  setState(() {
                    timelineIndex--;
                  });
                  // BlocProvider.of<RemoteTripBloc>(context)
                  //     .add(EditRemoteTripServiceProviderEvent());
                },
              ),
            ),
            Expanded(
              child: CustomActionButton(
                title: "Add Trip",
                isExpanded: true,
                margin:
                    EdgeInsets.only(left: 8, bottom: 24, right: 24, top: 44),
                onTap: () {
                  setState(() {
                    timelineIndex++;
                  });
                  // BlocProvider.of<RemoteTripBloc>(context)
                  //     .add(EditRemoteTripRouteEvent());
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget screen3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InAppTitle(
                  title: 'Route Trip Registration',
                ),
                Column(
                  children: <Widget>[
                    CustomTextField(
                      title: "Service Provider Id",
                      controller: _routePageServiceProviderId,
                      validate: Validate.withOption(
                        isRequired: false,
                      ),
                    ),
                    CustomDropDownList<String>(
                      title: "User Type",
                      controller: _userType,
                      loadData: () async => ["Stuff", "Tenant", "manager"],
                      displayName: (x) => x,
                      validate: Validate.withOption(
                        isRequired: false,
                      ),
                    ),
                    CustomDropDownList<String>(
                      title: "Route",
                      controller: _route,
                      loadData: () async =>
                          ["DAC-ZYL", "GOA-MANALI", "DUB-DAC"],
                      displayName: (x) => x,
                      validate: Validate.withOption(
                        isRequired: false,
                      ),
                    ),
                    CustomTextField(
                      title: "User ID",
                      controller: _userID,
                      validate: Validate.withOption(
                        isRequired: false,
                      ),
                    ),
                    CustomTextField(
                      title: "User Name",
                      controller: _username,
                      validate: Validate.withOption(
                          isRequired: false, isNumber: false),
                    ),
                    CustomTextField(
                      title: "User Phone Number",
                      controller: _userPhoneNumber,
                      validate: Validate.withOption(
                          isRequired: false, isNumber: false),
                    ),
                    CustomTextField(
                      title: "User Email Address",
                      controller: _userEmailAddress,
                      validate: Validate.withOption(
                          isRequired: false, isNumber: false),
                    ),
                    CustomTextField(
                      title: "App User ID",
                      controller: _appUserID,
                      validate: Validate.withOption(
                          isRequired: false, isNumber: false),
                    ),
                    CustomSwitchWithTitle(
                      title: "Is Active",
                      isEnabled: _routePageRegular,
                      onChange: (x) {
                        _routePageRegular = x;
                      },
                    ),
                  ],
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
                isExpanded: false,
                isOutline: true,
                margin:
                    EdgeInsets.only(left: 24, bottom: 24, right: 8, top: 44),
                onTap: () {
                  setState(() {
                    timelineIndex--;
                  });
                  // BlocProvider.of<RemoteTripBloc>(context)
                  //     .add(RemoteTripRouteListEvent());
                },
              ),
            ),
            Expanded(
              child: CustomActionButton(
                title: "Next",
                isExpanded: false,
                margin:
                    EdgeInsets.only(left: 8, bottom: 24, right: 24, top: 44),
                onTap: () {
                  if (_validate()) {
                    setState(() {
                      timelineIndex--;
                    });
                    // BlocProvider.of<RemoteTripBloc>(context)
                    //     .add(RemoteTripRouteListEvent());
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
