import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/blocs/service_bloc.dart';
import 'package:complex/data/models/response/user_response/service_model.dart';
import 'package:complex/newentityfeatures/Appointment/AppointmentConfiguration/Presentation/configure_checkIn.dart';
//lib/newentityfeatures/Appointment/models/appointment_model.dart
//lib/newentityfeatures/Appointment/AppointmentConfiguration/configure_appointment.dart
//lib/newentityfeatures/Appointment/AppointmentConfiguration/Presentation/configure_appointment.dart
import 'package:complex/newentityfeatures/Appointment/models/slot_configuration_model/check_in_model.dart';
// import 'package:complex/newentityfeatures/appointment/appointmentConfiguration/Presentation/configure_checkIn.dart';
import 'package:complex/newentityfeatures/Appointment/models/slot_configuration_model/home_visit_model.dart';
import 'package:complex/newentityfeatures/Appointment/models/slot_configuration_model/reg_apt_model.dart';
import 'package:complex/newentityfeatures/Appointment/models/slot_configuration_model/slot_configuration_model.dart';
import 'package:complex/newentityfeatures/Appointment/services/slot_configuration_repository.dart';
import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
//import "package:asuka/asuka.dart" as asuka;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
//import 'package:toast/toast.dart';

import 'configure_Fixed_appointment.dart';
import 'configure_homeVisit.dart';

class ConfigureAppointment extends StatefulWidget {
  final bool editSlot;
  final String editSlotId;

  const ConfigureAppointment({this.editSlot, this.editSlotId});

  @override
  _ConfigureAppointmentState createState() => _ConfigureAppointmentState();
}

class _ConfigureAppointmentState extends State<ConfigureAppointment> {
  bool hasAppointment;
  ServiceModel serviceModal;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Slot Configration',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 6,
        backgroundColor: Colors.white,
        toolbarHeight: 60,
      ),
      body: BlocBuilder<ServiceBloc, ServiceState>(
        builder: (context, state) {
          return Container();
          /*
          if (state is ServiceLoading) {
            return buildLoading();
          }
          if (state is ServiceLoaded) {
            final Stream<ServiceModel> service = state.service;
            service.listen((event) {
              hasAppointment = event.hasapt;
            });

            if (hasAppointment) {
              service.listen((event) {
                serviceModal = event;
              });
              return ConfigureScreen(
                appointmentType: serviceModal.apttype,
                serviceProviderName: serviceModal.associatedComplexName,
                hasCheckin: serviceModal.hasqapt,
                hasFixedAppointment: serviceModal.hasRapt,
                hasHomeVisit: serviceModal.hasvapt,
                perEmployee:
                    true, //serviceModal.apttype == 'PER_STORE' ? false : true,
                serviceId: serviceModal.serviceID,
                editSlot: widget.editSlot,
                ediSlotId: widget.editSlotId,
              );
            } else {
              return Container(
                  child: Text('Your Service not avaialible for appointment'));
            }
          } else {
            return buildLoading();
            // return Center(
            //   child: Text(
            //     'Error : Initial Screen',
            //     style: underHeadingStyle(),
            //   ),
            // );
          }

           */
        },
      ),
    );
  }
}

class ConfigureScreen extends StatefulWidget {
  final String appointmentType;
  final String serviceProviderName;
  final bool perEmployee;

  final bool hasCheckin;
  final bool hasHomeVisit;
  final bool hasFixedAppointment;

  final bool editSlot;
  final String ediSlotId;

  final String serviceId;

  const ConfigureScreen({
    this.appointmentType,
    this.serviceProviderName,
    this.hasCheckin,
    this.hasHomeVisit,
    this.hasFixedAppointment,
    this.perEmployee,
    this.serviceId,
    this.editSlot,
    this.ediSlotId,
  });

  @override
  _ConfigureScreenState createState() => _ConfigureScreenState();
}

class _ConfigureScreenState extends State<ConfigureScreen> {
  bool isLoading = false;

  String employeeId;
  String employerName;

  setEmployeeId(String id) {
    employeeId = id;
    print(employeeId);
  }

  setEmployeeName(String name) {
    employerName = name;
    print(employerName);
  }

  HomeVisitModel homeVisitModel = HomeVisitModel(
    monStart: '12:00',
    monEnd: '12:00',
    tueStart: '12:00',
    tueEnd: '12:00',
    wedStart: '12:00',
    wedEnd: '12:00',
    thuStart: '12:00',
    thuEnd: '12:00',
    friStart: '12:00',
    friEnd: '12:00',
    satStart: '12:00',
    satEnd: '12:00',
    sunStart: '12:00',
    sunEnd: '12:00',
    monNum: 0,
    tueNum: 0,
    wedNum: 0,
    thuNum: 0,
    friNum: 0,
    satNum: 0,
    sunNum: 0,
    slotDuration: 0,
  );
  RegAptModel regularAptModel = RegAptModel(
    monStart: '12:00',
    monEnd: '12:00',
    tueStart: '12:00',
    tueEnd: '12:00',
    wedStart: '12:00',
    wedEnd: '12:00',
    thuStart: '12:00',
    thuEnd: '12:00',
    friStart: '12:00',
    friEnd: '12:00',
    satStart: '12:00',
    satEnd: '12:00',
    sunStart: '12:00',
    sunEnd: '12:00',
    monNum: 0,
    tueNum: 0,
    wedNum: 0,
    thuNum: 0,
    friNum: 0,
    satNum: 0,
    sunNum: 0,
    slotDuration: 0,
  );
  CheckInModel checkInModel = CheckInModel(monPeriods: [
    'Morning',
    '12:00',
    '12:00',
    'Afternoon',
    '12:00',
    '12:00',
    'Evening',
    '12:00',
    '12:00'
  ], tuePeriods: [
    'Morning',
    '12:00',
    '12:00',
    'Afternoon',
    '12:00',
    '12:00',
    'Evening',
    '12:00',
    '12:00'
  ], wedPeriods: [
    'Morning',
    '12:00',
    '12:00',
    'Afternoon',
    '12:00',
    '12:00',
    'Evening',
    '12:00',
    '12:00'
  ], thuPeriods: [
    'Morning',
    '12:00',
    '12:00',
    'Afternoon',
    '12:00',
    '12:00',
    'Evening',
    '12:00',
    '12:00'
  ], friPeriods: [
    'Morning',
    '12:00',
    '12:00',
    'Afternoon',
    '12:00',
    '12:00',
    'Evening',
    '12:00',
    '12:00'
  ], satPeriods: [
    'Morning',
    '12:00',
    '12:00',
    'Afternoon',
    '12:00',
    '12:00',
    'Evening',
    '12:00',
    '12:00'
  ], sunPeriods: [
    'Morning',
    '12:00',
    '12:00',
    'Afternoon',
    '12:00',
    '12:00',
    'Evening',
    '12:00',
    '12:00'
  ], periods: [
    'Morning',
    '12:00',
    '12:00',
    'Afternoon',
    '12:00',
    '12:00',
    'Evening',
    '12:00',
    '12:00',
    'Morning',
    '12:00',
    '12:00',
    'Afternoon',
    '12:00',
    '12:00',
    'Evening',
    '12:00',
    '12:00'
        'Morning',
    '12:00',
    '12:00',
    'Afternoon',
    '12:00',
    '12:00',
    'Evening',
    '12:00',
    '12:00'
        'Morning',
    '12:00',
    '12:00',
    'Afternoon',
    '12:00',
    '12:00',
    'Evening',
    '12:00',
    '12:00'
        'Morning',
    '12:00',
    '12:00',
    'Afternoon',
    '12:00',
    '12:00',
    'Evening',
    '12:00',
    '12:00'
        'Morning',
    '12:00',
    '12:00',
    'Afternoon',
    '12:00',
    '12:00',
    'Evening',
    '12:00',
    '12:00'
        'Morning',
    '12:00',
    '12:00',
    'Afternoon',
    '12:00',
    '12:00',
    'Evening',
    '12:00',
    '12:00'
  ], slotDuration: 0, queueRunningNumber: 1);

  void saveHomeVisit(HomeVisitModel homeModel) {
    homeVisitModel = homeModel;
  }

  void saveFixedAppointment(RegAptModel regAptModel) {
    regularAptModel = regAptModel;
  }

  void saveCheckInAppointment(CheckInModel chInModel) {
    checkInModel = chInModel;
  }

  getSavedSlots() async {
    if (widget.editSlot == false) {
      return;
    }
    setState(() {
      isLoading = true;
    });

    try {
      if (widget.perEmployee == false) {
        final doc = await FirebaseFirestore.instance
            .collection('SERVICEPROVIDERINFO')
            .doc(widget.serviceId)
            .collection('APPOINTMENTSLOTCONFIGURATION')
            .doc(widget.serviceId)
            .get();

        final slotConfigration = SlotConfigurationModel.fromFirestore(doc);

        checkInModel = slotConfigration.checkIn;
        homeVisitModel = slotConfigration.homeVisit;
        regularAptModel = slotConfigration.regApt;
      }
      if (widget.perEmployee == true) {}
    } on FirebaseException catch (e) {
      print(e);
    } catch (e) {
      print(e);
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    getSavedSlots();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            border: Border.all(color: Colors.grey)),
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Appointment Type: ${widget.appointmentType}',
                              style: TextStyle(
                                  fontFamily: 'Merriweather', fontSize: 20),
                            )),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      if (widget.perEmployee == false)
                        StoreTable(
                          storeName: widget.serviceProviderName,
                        ),
                      if (widget.perEmployee == true)
                        EmployeeTable(
                          saveEmployeeId: setEmployeeId,
                          saveEmployeeName: setEmployeeName,
                          editSlot: widget.editSlot,
                          editEmployeeId: widget.ediSlotId,
                        ),
                      const SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Configure:',
                          style: TextStyle(
                              fontFamily: 'Merriweather', fontSize: 18),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          if (widget.hasCheckin)
                            ConfigurationButton(
                              title: 'Check In',
                              icon: Icons.calendar_today,
                              fontSize: 14,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return CheckInConfigure(
                                      checkinmodel: checkInModel,
                                      onSaveCheckInAppointment:
                                          saveCheckInAppointment,
                                    );
                                  }),
                                );
                              },
                            ),
                          if (widget.hasHomeVisit)
                            ConfigurationButton(
                              title: 'Home Visit',
                              icon: Icons.calendar_today,
                              fontSize: 14,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return HomeVisitConfigure(
                                      homevisitmodel: homeVisitModel,
                                      onSaveHomeVisit: saveHomeVisit,
                                    );
                                  }),
                                );
                              },
                            ),
                          if (widget.hasFixedAppointment)
                            ConfigurationButton(
                              title: '       Fixed\nAppointment',
                              icon: Icons.calendar_today,
                              fontSize: 12,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return FixedAppointmentConfigure(
                                      regularAptModel: regularAptModel,
                                      onSaveFixedAppointment:
                                          saveFixedAppointment,
                                    );
                                  }),
                                );
                              },
                            ),
                        ],
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    if (widget.perEmployee) {
                      if (employeeId == null) {
                        showToast('select employee', context);
                        return;
                      }
                      final slotConfigModel = SlotConfigurationModel(
                          slotConfigurationId: '88898989',
                          checkIn: checkInModel,
                          regApt: regularAptModel,
                          homeVisit: homeVisitModel);

                      print('here');
                      await SlotConfigurationRepository
                          .createSlotConfigurationPerEmployee(
                              slotConfiguration: slotConfigModel,
                              serviceId: 'bbbbbbbbbb',
                              staffId: employeeId,
                              employerName: employerName);
                      print('base created');
                    }
                    if (widget.perEmployee == false) {
                      setState(() {
                        isLoading = true;
                      });

                      final slotConfigModel = SlotConfigurationModel(
                          slotConfigurationId: '88898989',
                          checkIn: checkInModel,
                          regApt: regularAptModel,
                          homeVisit: homeVisitModel);

                      await SlotConfigurationRepository
                          .createSlotConfigurationPerStore(
                              slotConfigModel, widget.serviceId);

                      setState(() {
                        isLoading = false;
                      });

                      Navigator.of(context).pop(true);
                      print('Base Created');
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Done',
                        style: TextStyle(
                          fontFamily: 'Merriweather',
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

class ConfigurationButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onPressed;
  final double fontSize;

  const ConfigurationButton(
      {this.icon, this.title, this.onPressed, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 35,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: TextStyle(
                    fontFamily: 'Merriweather',
                    color: Colors.white,
                    fontSize: fontSize),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EmployeeTable extends StatefulWidget {
  Function saveEmployeeId;
  Function saveEmployeeName;

  bool editSlot;
  String editEmployeeId;

  EmployeeTable(
      {this.saveEmployeeId,
      this.saveEmployeeName,
      this.editSlot,
      this.editEmployeeId});
  @override
  _EmployeeTableState createState() => _EmployeeTableState();
}

class _EmployeeTableState extends State<EmployeeTable> {
  List<SchoolOwner> selectedOwners = [];
  List<SchoolOwner> availableOwners = [];

  NewSchoolRepository _schoolRepo = Get.find();

  bool empolyeeLoading = false;

  getOwners() async {
    setState(() {
      empolyeeLoading = true;
    });
    availableOwners = await _schoolRepo.getSchoolOwner(
      entityid: 'S83gVmFUF716UzBVCzkb',
      staffcategory: 'instructor',
      entitytype: 'SERVICEPROVIDERINFO',
    );
    setState(() {
      empolyeeLoading = false;
    });

    if (widget.editSlot == true) {
      selectedOwners = [
        availableOwners
            .singleWhere((element) => element.id == widget.editEmployeeId)
      ];
    }
    widget.saveEmployeeId(availableOwners[0].id);
    widget.saveEmployeeName(availableOwners[0].display);
  }

  getAvailableOwners() async {
    availableOwners.removeWhere((element) => selectedOwners.contains(element));
  }

  @override
  void initState() {
    getOwners();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(color: Colors.grey),
      ),
      child: empolyeeLoading
          ? buildLoading()
          : Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Employer:',
                    style: TextStyle(fontFamily: 'Merriweather', fontSize: 18),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ...selectedOwners
                      .map<Widget>(
                        (element) => Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                      '${selectedOwners.indexOf(element) + 1}.'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '${element.display}',
                                    style: TextStyle(
                                      fontFamily: 'Merriweather',
                                      fontSize: 16,
                                    ),
                                  ),
                                  widget.editSlot
                                      ? Container()
                                      : IconButton(
                                          icon: Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                            size: 20,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              selectedOwners.remove(element);
                                              availableOwners.add(element);
                                            });
                                          },
                                        ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )
                      .toList(),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: empolyeeLoading
                        ? CircularProgressIndicator()
                        : (selectedOwners.length == 1)
                            ? Container()
                            : RaisedButton(
                                child: Text(
                                  'Add new',
                                  style: TextStyle(
                                      fontFamily: 'Merriweather',
                                      color: Colors.white),
                                ),
                                color: Colors.blue,
                                onPressed: () {
                                  if (availableOwners.length <= 0) {
                                    showToast(
                                        'No Empolyees Availible', context);
                                    return;
                                  }
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SimpleDialog(
                                        children: <Widget>[
                                          Container(
                                            height: 300,
                                            width: 300,
                                            child: ListView.separated(
                                                itemCount:
                                                    availableOwners.length,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return Divider();
                                                },
                                                itemBuilder: (context, index) {
                                                  return ListTile(
                                                    title: Text(
                                                        availableOwners[index]
                                                            .display),
                                                    onTap: () {
                                                      setState(() {
                                                        selectedOwners.add(
                                                            availableOwners[
                                                                index]);
                                                        widget.saveEmployeeId(
                                                            selectedOwners[0]
                                                                .id);
                                                        widget.saveEmployeeName(
                                                            selectedOwners[0]
                                                                .display);
                                                      });
                                                      Navigator.pop(context);
                                                      getAvailableOwners();
                                                    },
                                                  );
                                                }),
                                          )
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                  )
                ],
              ),
            ),
    );
  }
}

class StoreTable extends StatelessWidget {
  final String storeName;

  const StoreTable({this.storeName});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(color: Colors.grey),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            storeName ?? 'Store Name',
            style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 25,
                fontWeight: FontWeight.w300),
          ),
        ));
  }
}

Widget buildLoading() {
  return Center(
    child: CircularProgressIndicator(),
  );
}

void showToast(String text, BuildContext ctx) {
  EasyLoading.showSuccess("Item is Created/Saved");
}
