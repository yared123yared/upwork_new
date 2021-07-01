import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/newentityfeatures/trips/model/models/registered_user.dart';
import 'package:complex/newentityfeatures/trips/model/models/route_main_point.dart';
import 'package:complex/newentityfeatures/trips/model/models/route_points.dart';
import 'package:complex/newentityfeatures/trips/model/models/routes.dart';
import 'package:complex/newentityfeatures/trips/repository/repo/registered_user_repository.dart';
import 'package:complex/newentityfeatures/trips/widgets/custom_list_item.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;
import 'package:reorderables/reorderables.dart';

import '../itembloc/bloc.dart' as itembloc;

class RouteForm extends StatefulWidget {
  final RouteModel route;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  RouteForm({
    @required this.route,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _RouteFormState createState() => _RouteFormState();
}

class _RouteFormState extends State<RouteForm> {
  int timelineIndex = 1;
  RouteModel routeModel;

//
  CustomTextFieldController _routeNameTextController =
      CustomTextFieldController();
  CustomTextFieldController _reversedRouteNameTextController =
      CustomTextFieldController();
  CustomTextFieldController _descriptionTextController =
      CustomTextFieldController();

//
  CustomTextFieldController _routeTypeText = CustomTextFieldController();
  CustomTextFieldController _routeManagerText = CustomTextFieldController();

//

//
  CustomTextFieldController _pointControllerText = CustomTextFieldController();
  CustomTextFieldController _latitudeControllerText =
      CustomTextFieldController();
  CustomTextFieldController _longitudeControllerText =
      CustomTextFieldController();
  CustomTextFieldController _distanceControllerText =
      CustomTextFieldController();
  CustomTextFieldController _timeOffsetText = CustomTextFieldController();

  int _index;
  bool _isUpdate = false;
  bool isRouteReversed;

  var searchState;

  Future _initFiledValue() async {
    _isUpdate = widget?.route != null;
    isRouteReversed = widget?.route?.isRouteReversed ?? false;
    if (_isUpdate) {
      // if (timelineIndex == 1) {
      if (_isUpdate ||
          widget.route.name != null && widget.route.description != null) {
        Future.delayed(Duration(milliseconds: 80), () {
          routeModel = widget.route;
          if (widget.route.isRouteReversed) {
            _reversedRouteNameTextController.text = widget.route.reversedName;
          }
          _routeNameTextController.text = widget.route.name;
          _descriptionTextController.text = widget.route.description;
        });
      }
      // } else if (timelineIndex == 2) {
      // if (_isUpdate)
      Future.delayed(Duration(milliseconds: 80), () {
        if (widget?.route?.type != null) {
          _routeTypeText.text =
              widget.route.type == RouteType.Public ? 'PUBLIC' : 'PRIVATE';
        }
        _routeManagerText.text = widget.route.staff.name;
      });
      // } else if (timelineIndex == 3) {
      // } else if (timelineIndex == 3) {
      print(_index);
      final mainPoints = widget.route.mainPoints;
      if (_index != -1) {
        Future.delayed(Duration(milliseconds: 80), () {
          print('hey');
          if (mainPoints != null)
            _pointControllerText.text = mainPoints[_index].pointName;
          _latitudeControllerText.text =
              mainPoints[_index].geoPoint.latitude.toString();
          _longitudeControllerText.text =
              mainPoints[_index].geoPoint.longitude.toString();
          _distanceControllerText.text = mainPoints[_index].distance.toString();
          _timeOffsetText.text = mainPoints[_index].timeOffset.toString();
        });
      }
    }
  }

  bool _validate() {
    if (timelineIndex == 1) {
      if (isRouteReversed) {
        return _reversedRouteNameTextController.isValid &&
            _routeNameTextController.isValid &&
            _descriptionTextController.isValid;
      }
      return _routeNameTextController.isValid &&
          _descriptionTextController.isValid;
    } else if (timelineIndex == 2) {
      return _routeTypeText.isValid &&
          _routeManagerText.isValid &&
          _routeTypeText.isValid;
    } else if (timelineIndex == 3) {
    } else if (timelineIndex == 4) {
      return _pointControllerText.isValid &&
          _latitudeControllerText.isValid &&
          _longitudeControllerText.isValid &&
          _distanceControllerText.isValid &&
          _timeOffsetText.isValid;
    }
  }

  Future _initFiledValueViaState(RoutePointsModel routePoint) async {
    Future.delayed(Duration(milliseconds: 80), () {
      print('hey');
      _pointControllerText.text = routePoint.pointName;
      _latitudeControllerText.text = routePoint.geoPoint.latitude.toString();
      _longitudeControllerText.text = routePoint.geoPoint.longitude.toString();
    });
  }

  @override
  void initState() {
    super.initState();
    _initFiledValue();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.RouteBloc()
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
        body: BlocListener<itembloc.RouteBloc, itembloc.RouteState>(
            listener: (context, state) {
          if (state is itembloc.RoutePointsSearchSuccess) {
            setState(() {
              searchState = state;
              timelineIndex = 5;
            });
          }
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            routeModel = widget?.route ?? RouteModel();
            // sessiontermlist = state.sessiontermlist;
            _initFiledValue();
          }
        }, child: BlocBuilder<itembloc.RouteBloc, itembloc.RouteState>(
                builder: (context, state) {
          if (state is itembloc.IsBusy)
            return Center(
              child: Container(
                  width: 20, height: 20, child: CircularProgressIndicator()),
            );
          if (state is itembloc.LoadingRoutePointsSearch) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is itembloc.HasLogicalFaliur)
            return Center(child: Text(state.error));
          if (state is itembloc.HasExceptionFaliur)
            return Center(child: Text(state.error));
          if (state is itembloc.HasExceptionFaliur)
            return Center(child: Text(state.error));

          if (state is itembloc.IsReadyForDetailsPage ||
              state is itembloc.RoutePointsSearchSuccess) {
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
                  if (timelineIndex == 1) MaterialPage(child: screen1(context)),
                  if (timelineIndex == 2) MaterialPage(child: screen2()),
                  if (timelineIndex == 3) MaterialPage(child: screen3(context)),
                  if (timelineIndex == 4) MaterialPage(child: screen4()),
                  if (timelineIndex == 5) MaterialPage(child: screen5(context)),
                ];
              }),
        ),
      ],
    );
  }

  Widget screen1(context) {
    return StatefulBuilder(
      builder: (context, setInnerState) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  InAppTitle(
                    title: 'Routes',
                  ),
                  CustomTextField(
                    title: "Route Name",
                    controller: _routeNameTextController,
                    validate: Validate.withOption(
                      isRequired: true,
                    ),
                  ),
                  CustomTextField(
                    title: "Route Description",
                    controller: _descriptionTextController,
                    validate: Validate.withOption(
                      isRequired: true,
                    ),
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              value: isRouteReversed,
                              onChanged: (value) {
                                setInnerState(() {
                                  isRouteReversed = value;
                                });
                              }),
                          Text(
                            'Reversed Route',
                            style: tileSubTitle.copyWith(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      AnimatedOpacity(
                        duration: Duration(milliseconds: 500),
                        opacity: isRouteReversed ? 1 : 0,
                        child: CustomTextField(
                          title: "Reversed Route Name",
                          controller: _reversedRouteNameTextController,
                          validate: Validate.withOption(
                            isRequired: true,
                          ),
                        ),
                      )
                    ],
                  )
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
                      EdgeInsets.only(left: 24, bottom: 24, right: 8, top: 44),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Expanded(
                child: CustomActionButton(
                  title: "Next",
                  isExpanded: true,
                  isOutline: true,
                  margin:
                      EdgeInsets.only(left: 8, bottom: 24, right: 24, top: 44),
                  onTap: () {
                    if (_validate()) {
                      RouteModel route = RouteModel(
                        reversedName: _reversedRouteNameTextController?.text,
                        name: _routeNameTextController.text,
                        description: _descriptionTextController.text,
                      );
                      setState(() {
                        timelineIndex++;
                        routeModel = route;
                      });
                      _initFiledValue();
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget screen2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InAppTitle(
                  title: 'Route',
                ),
                CustomDropDownList<String>(
                  title: "Route Type",
                  controller: _routeTypeText,
                  loadData: () async => [
                    "PRIVATE",
                    "PUBLIC",
                  ],
                  displayName: (x) => x,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomDropDownList<RegisteredUser>(
                  title: "Route Manager",
                  validate: Validate.withOption(isRequired: true),
                  loadData: () async =>
                      RegisteredUserRepo.registeredUser(widget.entityid),
                  displayName: (staff) => staff.name,
                  controller: _routeManagerText,
                  onSelected: (staff, index) {
                    setState(() {
                      routeModel.staff = staff;
                    });
                  },
                ),
                // CustomTextField(
                //   title: "Service Provider -ID",
                //   controller: _serviceProviderIdText,
                //   validate: Validate.withOption(
                //     isRequired: false,
                //   ),
                // ),
                // CustomTextField(
                //   title: "Service Provider -Name",
                //   controller: _serviceProviderNameText,
                //   validate: Validate.withOption(
                //     isRequired: false,
                //   ),
                // ),
                // CustomTextField(
                //   title: "Managed By Service Provider -ID",
                //   controller: _managedByServiceProviderIdText,
                //   validate: Validate.withOption(
                //     isRequired: false,
                //   ),
                // ),
                // CustomTextField(
                //   title: "Managed By Service Provider -Name",
                //   controller: _managedByServiceProviderNameText,
                //   validate: Validate.withOption(
                //     isRequired: false,
                //   ),
                // ),
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
                    EdgeInsets.only(left: 24, bottom: 24, right: 8, top: 44),
                onTap: () {
                  setState(() {
                    timelineIndex--;
                  });
                },
              ),
            ),
            Expanded(
              child: CustomActionButton(
                title: "Next",
                isExpanded: true,
                isOutline: true,
                margin:
                    EdgeInsets.only(left: 8, bottom: 24, right: 24, top: 44),
                onTap: () {
                  if (_validate()) {
                    RouteModel route = routeModel.copyWith(
                      type: _routeTypeText.text == 'PUBLIC'
                          ? RouteType.Public
                          : RouteType.Private,
                    );
                    setState(() {
                      timelineIndex++;
                      routeModel = route;
                    });
                    _initFiledValue();
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget screen3(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        InAppTitle(
          title: 'Route',
          subtitle: 'Main Point',
        ),
        SizedBox(height: height * 2),
        Expanded(
          child: routeModel.mainPoints != null
              ?
              // BlocBuilder<MainPointBloc, MainPointState>(
              //     builder: (context, state) {
              //       return
              ReorderableColumn(
                  children:
                      List.generate(routeModel.mainPoints.length, (index) {
                    return CustomListItem(
                      isReorderable: true,
                      editAction: () {
                        setState(() {
                          timelineIndex++;
                          _index = index;
                        });
                        _initFiledValue();
                      },
                      removeAction: () {
                        showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                                  title: Text(
                                      'Are you sure you want to remove this main point?'),
                                  actions: [
                                    CustomActionButton(
                                      onTap: () => Navigator.of(ctx).pop(false),
                                      title: 'No',
                                      margin: EdgeInsets.zero,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 10),
                                      isOutline: true,
                                    ),
                                    CustomActionButton(
                                      onTap: () {
                                        /// Removing the main point at specific index and then
                                        /// update the main points list UI.
                                        setState(() {
                                          routeModel.mainPoints.removeAt(
                                            index,
                                          );
                                        });
                                      },
                                      title: 'Yes',
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 18, vertical: 11),
                                      isOutline: true,
                                    ),
                                  ],
                                ));
                      },
                      title: routeModel.mainPoints[index].pointName,
                      key: ValueKey(routeModel.mainPoints[index].pointName),
                    );
                  }),
                  onReorder: (oldIndex, newIndex) {
                    /// Reordering two main points and re-rendering the points list.
                    setState(() {
                      var temp = routeModel.mainPoints[oldIndex];
                      routeModel.mainPoints[oldIndex] =
                          routeModel.mainPoints[newIndex];
                      routeModel.mainPoints[newIndex] = temp;
                    });
                  },
                )
              : SizedBox(height: height),
        ),
        Center(
          child: Container(
            width: width * 65,
            child: CustomActionButton(
              title: "Add New Point",
              isExpanded: true,
              isOutline: true,
              margin: EdgeInsets.only(left: 24, bottom: 24, right: 8, top: 20),
              onTap: () {
                /// When creating new main point, use -1 as index so it's invalid index
                /// to the main points array which indicates the creation of new main point
                /// rather than editing an existing one.
                setState(() {
                  timelineIndex++;
                  _index = -1;
                });
                _initFiledValue();
              },
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
                  setState(() {
                    timelineIndex--;
                  });
                },
              ),
            ),
            Expanded(
              child: CustomActionButton(
                  title: "Confirm",
                  isExpanded: true,
                  state: ButtonState.idle,
                  isOutline: true,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  margin:
                      EdgeInsets.only(left: 8, bottom: 24, right: 20, top: 20),
                  onTap: () {
                    print('Add route event should be fired');
                    if (_isUpdate) {
                      BlocProvider.of<itembloc.RouteBloc>(context).add(
                        itembloc.updateItem(
                          item: routeModel,
                          entityid: widget.entityid,
                          entitytype: widget.entitytype,
                        ),
                      );
                    } else {
                      BlocProvider.of<itembloc.RouteBloc>(context).add(
                        itembloc.createItem(
                          item: routeModel,
                          entityid: widget.entityid,
                          entitytype: widget.entitytype,
                        ),
                      );
                    }
                  }),
            ),
          ],
        ),
      ],
    );
  }

  Widget screen4() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InAppTitle(
                  title: 'Route Main Point',
                ),
                /* BlocBuilder<RoutePointsSearchBloc, RoutePointsSearchState>(
                  builder: (context, state) {
                    print('test search bloc');
                    if (state is RoutePointsSearchFound) {
                      _initFiledValueViaState(state.routePoint);
                    }
                    return  */
                Column(
                  children: [
                    CustomTextField(
                      onTap: () {
                        setState(() {
                          timelineIndex++;
                        });
                        _initFiledValue();
                      },
                      title: "Click here to search for route point",
                      controller: _pointControllerText,
                      enabled: false,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomTextField(
                      title: "Latitude",
                      enabled: false,
                      controller: _latitudeControllerText,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomTextField(
                      title: "Longitude",
                      enabled: false,
                      controller: _longitudeControllerText,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                  ],
                ),
                CustomTextField(
                  title: "Distance In Km",
                  controller: _distanceControllerText,
                  validate:
                      Validate.withOption(isRequired: true, isNumber: true),
                ),
                CustomTextField(
                  title: "Time Offset In Minutes",
                  controller: _timeOffsetText,
                  validate: Validate.withOption(
                    isRequired: true,
                    isNumber: true,
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
                    EdgeInsets.only(left: 24, bottom: 24, right: 8, top: 44),
                onTap: () {
                  setState(() {
                    timelineIndex--;
                  });
                },
              ),
            ),
            Expanded(
              child: CustomActionButton(
                title: "Confirm",
                isExpanded: true,
                isOutline: true,
                margin:
                    EdgeInsets.only(left: 8, bottom: 24, right: 24, top: 44),
                onTap: () {
                  if (_validate()) {
                    setState(() {
                      /// If there was no previous main points (i.e creating new route) then
                      /// initialize the main points list with empty one.
                      if (routeModel.mainPoints == null) {
                        routeModel.mainPoints = [];
                      }

                      ///If the index passed is -1 that means a new main point is created
                      /// otherwise modified.
                      if (_index != -1) {
                        routeModel.mainPoints[_index] = extractMainPoint();
                      } else {
                        routeModel.mainPoints.add(extractMainPoint());
                      }
                      timelineIndex--;
                    });
                    _initFiledValue();
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  RouteMainPoints extractMainPoint() {
    return RouteMainPoints(
        pointName: _pointControllerText.text,
        distance: double.parse(_distanceControllerText.text),
        geoPoint: GeoPoint(double.parse(_latitudeControllerText.text),
            double.parse(_longitudeControllerText.text)),
        timeOffset: double.parse(_timeOffsetText.text));
  }

  Widget screen5(context) {
    return Builder(
      builder: (context) => Column(
        children: [
          InAppTitle(title: 'Route Main Point'),
          // CustomTextField(
          //   title: 'Zip Code',
          //   controller: _zipCodeController,
          //   // validate: Validate.withOption(isRequired: true),
          // ),
          // CustomTextField(
          //   title: 'Town',
          //   controller: _townController,
          //   // validate: Validate.withOption(isRequired: true),
          // ),
          // CustomTextField(
          //   title: 'State',
          //   controller: _stateController,
          //   // validate: Validate.withOption(isRequired: true),
          // ),
          // CustomTextField(
          //   title: 'District',
          //   controller: _districtController,
          //   // validate: Validate.withOption(isRequired: true),
          // ),
          // BlocBuilder<itembloc.RouteBloc, itembloc.RouteState>(
          //   builder: (context, state) {
          //     List<RoutePointsModel> routePoints = [];
          //     if (state is itembloc.RoutePointsSearchSuccess)
          //       print(
          //           "EEEEEEEEEEEEEEEEEEEEEEEEEE\n\nEEEEEEEEEEEEEEEEEEEEEEEEEEEEE");
          //     // routePoints = state.routePoints;

          // return
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    CustomActionButton(
                      title: 'Back',
                      margin: EdgeInsets.zero,
                      isOutline: true,
                      onTap: () {
                        setState(() {
                          timelineIndex--;
                        });
                      },
                    ),
                    CustomActionButton(
                      state: searchState is! itembloc.LoadingRoutePointsSearch
                          ? ButtonState.idle
                          : ButtonState.loading,
                      title: 'Search',
                      margin: EdgeInsets.zero,
                      isOutline: true,
                      onTap: () {
                        BlocProvider.of<itembloc.RouteBloc>(context).add(
                          itembloc.RoutePointsSearchResultsFetched(
                            entityid: widget.entityid,
                            zipCode: null,
                            town: null,
                            state: null,
                            district: null,
                          ),
                        );
                      },
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
              ),
              if ((searchState?.routePoints?.length ?? 0) != 0 &&
                  searchState is itembloc.RoutePointsSearchSuccess)
                ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, i) {
                    var pointName = searchState.routePoints[i].pointName;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _initFiledValueViaState(searchState.routePoints[i]);
                          timelineIndex--;
                        });
                      },
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              pointName.replaceFirst(
                                  pointName[0], pointName[0].toUpperCase()),
                              style: tileSubTitle.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black)),
                        ),
                      ),
                    );
                  },
                  itemCount: searchState.routePoints.length,
                ),
              if (searchState != null &&
                  searchState is itembloc.RoutePointsSearchNotFound)
                Center(
                    child: Text(
                  'Route points are not found',
                  style: tileSubTitle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                )),
            ],
          ),
        ],
      ),
    );
  }
}
