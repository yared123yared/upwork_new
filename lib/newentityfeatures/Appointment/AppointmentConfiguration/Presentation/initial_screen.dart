import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/blocs/service_bloc.dart';
import 'package:complex/data/api/api_service.dart';

import 'package:complex/data/models/response/user_response/service_model.dart';
import 'package:complex/newentityfeatures/Appointment/models/slot_configuration_model/service_appointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'configure_appointment.dart';


class InitialAppointmentScreen extends StatefulWidget {
  @override
  _InitialAppointmentScreenState createState() =>
      _InitialAppointmentScreenState();
}

class _InitialAppointmentScreenState extends State<InitialAppointmentScreen> {
  bool hasAppointment;
  ServiceModel serviceModal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blue, //change your color here
        ),
        title: Text(
          'Appointment Configration',
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
        builder: (context, state) { return Container();
        /*
          if (state is ApiStatus.LOADING) {
            return buildLoading();
          }
          if (state is ApiStatus.SUCCESS) {
            final Stream<ServiceModel> service = state.;
            service.listen((event) {
              hasAppointment = event.hasapt;
            });

            if (hasAppointment) {
              service.listen((event) {
                serviceModal = event;
              });
              return AddServiceProvider(
                serviceId: serviceModal.serviceID,
                perEmployee:
                    true, //serviceModal.apttype == 'PER_STORE' ? false : true,
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

class AddServiceProvider extends StatefulWidget {
  final String serviceId;
  final bool perEmployee;

  const AddServiceProvider({this.serviceId, this.perEmployee});

  @override
  _AddServiceProviderState createState() => _AddServiceProviderState();
}

class _AddServiceProviderState extends State<AddServiceProvider> {
  PerStoreTile perStoreTile;
  List<PerEmployeeTile> employeeTiles = [];

  bool perStoreExists = false;
  bool perEmployeeExists = false;

  bool isLoading = false;

  getServiceProvider() async {
    setState(() {
      isLoading = true;
    });
    if (widget.perEmployee) {
      final doc = await FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc('bbbbbbbbbb') //Test ID
          .collection('APPOINTMENTSLOTCONFIGURATION')
          .get();

      if (doc.docs.length == 0) {
        print('No empolees');
        setState(() {
          isLoading = false;
        });
        return;
      }

      doc.docs.forEach((element) {
        employeeTiles.add(PerEmployeeTile(
            employeeId: element.id, employeeName: element.data()['name']));
      });

      setState(() {
        perEmployeeExists = true;
        isLoading = false;
      });
    } else {
      final doc = await FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(widget.serviceId)
          .collection('APPOINTMENTSLOTCONFIGURATION')
          .doc(widget.serviceId)
          .get();

      if (doc.exists) {
        perStoreExists = true;
        setState(() {
          perStoreTile = PerStoreTile(
            id: widget.serviceId,
            storeName: 'Store Name',
          );
        });
      } else {
        setState(() {
          perStoreExists = false;
        });
      }
      setState(() {
        isLoading = false;
      });
    }
  }

  bool showButton() {
    if (widget.perEmployee == false) {
      if (perStoreExists == true) {
        return false;
      }
    }
    return true;
  }

  @override
  void initState() {
    super.initState();
    getServiceProvider();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: isLoading
          ? Center(
              child: buildLoading(),
            )
          : Column(
              children: [
                Expanded(
                  child: widget.perEmployee
                      ? perEmployeeExists
                          ? PerEmployerTiles(
                              employeeTiles: employeeTiles,
                              getServiceProviders: getServiceProvider,
                            )
                          : Container()
                      : perStoreExists
                          ? PerStore(
                              getServiceProviders: getServiceProvider,
                              perStoreTile: perStoreTile,
                            )
                          : Center(
                              child: Text(
                              'No Slots Exists',
                            )),
                ),
                GestureDetector(
                  onTap: () async {
                    bool reload = await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return ConfigureAppointment(
                          editSlot: false,
                          editSlotId: '',
                        );
                      }),
                    );
                    if (reload) {
                      getServiceProvider();
                    }
                  },
                  child: showButton()
                      ? Container(
                          height: 40,
                          width: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Add Service Provider',
                            style: TextStyle(
                              fontFamily: 'Merriweather',
                              color: Colors.white,
                            ),
                          ),
                        )
                      : Container(),
                )
              ],
            ),
    );
  }
}

Widget buildLoading() {
  return Center(
    child: CircularProgressIndicator(),
  );
}

class PerStore extends StatelessWidget {
  final Function getServiceProviders;
  final perStoreTile;

  PerStore({this.getServiceProviders, this.perStoreTile});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            onTap: () async {
              bool reload = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ConfigureAppointment(
                    editSlot: true,
                    editSlotId: '',
                  );
                }),
              );
              if (reload) {
                getServiceProviders();
              }
            },
            title: Text(perStoreTile.storeName),
            subtitle: Text('Store type: Per Store'),
          ),
        )
      ],
    );
  }
}

class PerEmployerTiles extends StatelessWidget {
  final Function getServiceProviders;
  final List<PerEmployeeTile> employeeTiles;

  const PerEmployerTiles({this.getServiceProviders, this.employeeTiles});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: employeeTiles.length,
        itemBuilder: (ctx, index) {
          return Column(
            children: [
              Card(
                child: ListTile(
                  onTap: () async {
                    bool reload = await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return ConfigureAppointment(
                          editSlot: true,
                          editSlotId: employeeTiles[index].employeeId,
                        );
                      }),
                    );
                    if (reload) {
                      getServiceProviders();
                    }
                  },
                  title: Text(employeeTiles[index].employeeName),
                  subtitle: Text('Store type: Per Employee'),
                ),
              )
            ],
          );
        });
  }
}
