import 'package:complex/blocs/service_bloc.dart';
import 'package:complex/common/helputil.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/data.dart';
import 'package:complex/data/models/response/user_response/service_model.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/main.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/custom_date_picker.dart';
import 'package:complex/common/widgets/custom_dropdown.dart';
import 'package:complex/common/widgets/custom_image_uploader.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/common/widgets/tap_widget.dart';
import 'package:complex/view/complex_pages/custom_address_picker.dart';
import 'package:complex/utils/places.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injector/injector.dart';
import 'package:provider/provider.dart';

class CreateServicePage extends StatefulWidget {
  final ServiceModel serviceModel;
  final bool update;
  final List<Place> places;

  CreateServicePage({
    Key key,
    this.places,
    this.update = false,
    this.serviceModel,
  })  : assert(places != null),
        assert(serviceModel != null),
        super(key: key);

  @override
  _CreateServicePageState createState() => _CreateServicePageState();
}

class _CreateServicePageState extends State<CreateServicePage> {
  ScrollController controller = ScrollController();
  int currentIndex = 1;
  CustomTextFieldController _serviceOffered = CustomTextFieldController();
  CustomTextFieldController _mPhone = CustomTextFieldController();
  CustomTextFieldController _mLanguage = CustomTextFieldController();
  CustomTextFieldController _timeInterval = CustomTextFieldController();
  CustomTextFieldController _address = CustomTextFieldController();
  CustomTextFieldController _biography = CustomTextFieldController();
  CustomTextFieldController _category = CustomTextFieldController();
  CustomTextFieldController _email = CustomTextFieldController();
  CustomTextFieldController _geoHash = CustomTextFieldController();
  CustomTextFieldController _photo = CustomTextFieldController();
  CustomTextFieldController _serviceName = CustomTextFieldController();
  CustomTextFieldController _serviceType = CustomTextFieldController();
  CustomTextFieldController _town = CustomTextFieldController();
  CustomTextFieldController _state = CustomTextFieldController();
  CustomTextFieldController _zipCode = CustomTextFieldController();
  CustomTextFieldController _latitude = CustomTextFieldController();
  CustomTextFieldController _longitude = CustomTextFieldController();
  CustomTextFieldController _startDateController = CustomTextFieldController();
  CustomTextFieldController _endDateController = CustomTextFieldController();
  CustomTextFieldController aptpslots = CustomTextFieldController();
  CustomTextFieldController apttype = CustomTextFieldController();

  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();

  bool isMobile;
  bool locationShared;
  bool currentLocation;

  CustomTextFieldController _areaOrSector = CustomTextFieldController();
  CustomTextFieldController _societyName = CustomTextFieldController();

  Map<String, bool> _daysList = {
    'sun': false,
    'mon': false,
    'tue': false,
    'wed': false,
    'thu': false,
    'fri': false,
    'sat': false
  };
  // tFri = json['t_fri'];
  // tMon = json['t_mon'];
  // tSat = json['t_sat'];
  // tSun = json['t_sun'];
  // tThu = json['t_thu'];
  // tTue = json['t_tue'];
  // tWed = json['t_wed'];

  String _chosenDay;

  // String workTime;
  // String lunchTime;
  CustomTextFieldController _workTime = CustomTextFieldController();
  CustomTextFieldController _lunchTime = CustomTextFieldController();

  bool hasAppointment;
  bool hasrapt;
  bool hasqapt;
  bool hasvapt;
  bool hasecom;
  bool justlisting;
  bool hasrent;
  bool onlyallowedregisteredecom;
  bool requirepaymentecom;
  bool doinventorymanagement;
  bool hasregistration;
  bool hasfeemanagement;
  bool hasfscan;
  bool requirepaymentapt;
  bool hastrip;
  bool hasexternalmanagedtrips;
  bool hasadhoctrips;
  bool requirecutomerregistration;
  bool requirepayment;
  bool requireticketing;
  bool onlinetripbooking;
  bool mainatainenceservicerequest;
  bool hassecurity;
  bool requirepaymentaptreg;

  List<String> serviceOffered = ['School', 'Trip', 'Shop', 'Appointment'];
  List<String> serviceType = ['TUTOR', 'DOCTOR'];
  List<String> languages = ['English', 'Hindi'];

  var _key = GlobalKey<ScaffoldState>();

  UserRepository _userRepository = Injector.appInstance.get<UserRepository>();
  ServiceBloc _serviceBloc;
  bool _isLoading = false;

  @override
  void initState() {
    _initFilledValid();
    super.initState();
  }

  bool _validate() {
    bool valid = true;
    if (currentIndex == 1) {
      if (!_photo.isValid) valid = false;
      if (!_serviceName.isValid) valid = false;
      if (!_serviceType.isValid) valid = false;
      // if (!_serviceOffered.isValid) valid = false;
      // if (!_mLanguage.isValid) valid = false;
      // if (!_timeInterval.isValid) valid = false;
    } else if (currentIndex == 2) {
      // if (!_mPhone.isValid) valid = false;
      if (!_email.isValid) valid = false;

      if (!_state.isValid) valid = false;
      if (!_town.isValid) valid = false;
      if (!_zipCode.isValid) valid = false;
      if (!_areaOrSector.isValid) valid = false;
      if (!_societyName.isValid) valid = false;
      if (!_address.isValid) valid = false;
      // if (!_geoHash.isValid) valid = false;
      //   if (!_latitude.isValid) valid = false;
      //   if (!_longitude.isValid) valid = false;
    } else if (currentIndex == 3) {
      if (!_workTime.isValid) valid = false;
      if (!_lunchTime.isValid) valid = false;

      //   if (!_biography.isValid) valid = false;
      //   if (!_category.isValid) valid = false;
      //   if (_startDate.isAfter(_endDate)) {
      //     Utility.showSnackBar(
      //         key: _key, message: "Start Date must be before end date");
      //     valid = false;
      //   }
      // } else if (currentIndex == 4) {
      //   if (hasAppointment && !aptpslots.isValid) valid = false;
      //   if (hasAppointment && !apttype.isValid) valid = false;
    }
    return valid;
  }

  ///this do the init of the switchs
  ///the custom text fields has its owen initvalue parameter
  Future _initFilledValid() async {
    // _chosenDay = widget.serviceModel?.tm;
    // _daysList[_chosenDay] = true;

    isMobile = widget.serviceModel?.mainatainenceservicerequest ?? false;
    locationShared = widget.serviceModel?.mainatainenceservicerequest ?? false;
    currentLocation = widget.serviceModel?.mainatainenceservicerequest ?? false;

    hasAppointment = widget.serviceModel?.hasApt ?? false;
    hasrapt = widget.serviceModel?.hasRapt ?? false;
    hasqapt = widget.serviceModel?.hasqapt ?? false;
    hasvapt = widget.serviceModel?.hasvapt ?? false;
    hasecom = widget.serviceModel?.hasecom ?? false;
    justlisting = widget.serviceModel?.justlisting ?? false;
    hasrent = widget.serviceModel?.hasrent ?? false;
    onlyallowedregisteredecom =
        widget.serviceModel?.onlyallowedregisteredecom ?? false;
    requirepaymentecom = widget.serviceModel?.requirepaymentecom ?? false;
    doinventorymanagement = widget.serviceModel?.doinventorymanagement ?? false;
    hasregistration = widget.serviceModel?.hasregistration ?? false;
    hasfeemanagement = widget.serviceModel?.hasfeemanagement ?? false;
    hasfscan = widget.serviceModel?.hasfscan ?? false;
    requirepaymentapt = widget.serviceModel?.requirepaymentapt ?? false;
    hastrip = widget.serviceModel?.hastrip ?? false;
    hasexternalmanagedtrips =
        widget.serviceModel?.hasexternalmanagedtrips ?? false;
    hasadhoctrips = widget.serviceModel?.hasadhoctrips ?? false;
    requirecutomerregistration =
        widget.serviceModel?.requirecutomerregistration ?? false;
    requirepayment = widget.serviceModel?.requirepayment ?? false;
    requireticketing = widget.serviceModel?.requireticketing ?? false;
    onlinetripbooking = widget.serviceModel?.onlinetripbooking ?? false;
    mainatainenceservicerequest =
        widget.serviceModel?.mainatainenceservicerequest ?? false;
    hassecurity = widget.serviceModel?.hassecurity ?? false;
    requirepaymentaptreg = widget.serviceModel?.requirepaymentaptreg ?? false;
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
                  width: MediaQuery.of(context).size.width / 12,
                  height: 5,
                  color: currentIndex > 1
                      ? ColorConstants.primaryColor
                      : Colors.grey.withOpacity(0.3),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    border: Border.all(
                        color: currentIndex > 1
                            ? ColorConstants.primaryColor
                            : Colors.grey.withOpacity(0.3),
                        width: 2),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "2",
                    style: Styles.semiBoldText(
                        size: 22,
                        color: currentIndex > 1
                            ? ColorConstants.primaryColor
                            : Colors.grey.withOpacity(0.3)),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 12,
                  height: 5,
                  color: currentIndex > 2
                      ? ColorConstants.primaryColor
                      : Colors.grey.withOpacity(0.3),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    border: Border.all(
                        color: currentIndex > 2
                            ? ColorConstants.primaryColor
                            : Colors.grey.withOpacity(0.3),
                        width: 2),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "3",
                    style: Styles.semiBoldText(
                        size: 22,
                        color: currentIndex > 2
                            ? ColorConstants.primaryColor
                            : Colors.grey.withOpacity(0.3)),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 12,
                  height: 5,
                  color: currentIndex > 3
                      ? ColorConstants.primaryColor
                      : Colors.grey.withOpacity(0.3),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    border: Border.all(
                        color: currentIndex == 4
                            ? ColorConstants.primaryColor
                            : Colors.grey.withOpacity(0.3),
                        width: 2),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "4",
                    style: Styles.semiBoldText(
                        size: 22,
                        color: currentIndex == 4
                            ? ColorConstants.primaryColor
                            : Colors.grey.withOpacity(0.3)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Application(context);
    _serviceBloc = Provider.of<ServiceBloc>(context);
    return WillPopScope(
      onWillPop: () async {
        if (currentIndex != 1) {
          setState(() {
            currentIndex--;
          });
        } else {
          return true;
        }
        return false;
      },
      child: BlocListener<ServiceBloc, ServiceState>(
        listener: (context, state) {
          if (state is CreateServiceState) _handleCreateResponse(state);
          if (state is UpdateServiceState) _handleUpdateResponse(state);
        },
        child: BlocBuilder<ServiceBloc, ServiceState>(
          builder: (context, state) {
            return Scaffold(
              key: _key,
              appBar: AppBar(
                leading: TapWidget(
                  onTap: () {
                    if (currentIndex != 1) {
                      setState(() {
                        currentIndex--;
                      });
                    } else {
                      Navigator.pop(context);
                    }
                  },
                  child: Icon(Icons.arrow_back),
                ),
                title: Text(
                  'Service form',
                  style: Styles.boldText(color: Colors.white, size: 18),
                ),
              ),
              body: ScreenWithLoader(
                isLoading: _isLoading,
                body: Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView(
                          controller: controller,
                          children: <Widget>[
                            // Center(child: _progress()),
                            _firstStep(),
                            screen2(),
                            screen3(),
                            screen4(),
                            screen5(),
                            screen6(),
                            screen7(),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (currentIndex > 1)
                              Expanded(
                                // width: double.infinity,
                                child: CustomButton(
                                  text: "Back",
                                  borderColor: ColorConstants.primaryColor,
                                  onTap: () {
                                    setState(() {
                                      currentIndex--;
                                    });
                                  },
                                ),
                              ),
                            SizedBox(width: 15.0),
                            Expanded(
                              // width: double.infinity,
                              child: CustomButton(
                                buttonColor: ColorConstants.primaryColor,
                                borderColor: ColorConstants.white,
                                text: currentIndex < 7
                                    ? "Next"
                                    : widget.update
                                        ? "Update"
                                        : "Add",
                                onTap: () async {
                                  if (_validate()) {
                                    if (currentIndex < 7) {
                                      setState(() {
                                        currentIndex++;
                                      });
                                      //   setState(() {
                                      //     currentIndex = 2;
                                      //   });
                                      // } else if (currentIndex == 2) {
                                      //   setState(() {
                                      //     currentIndex = 3;
                                      //   });
                                      // } else if (currentIndex == 3) {
                                      //   setState(() {
                                      //     currentIndex = 4;
                                      //   });
                                    } else if (currentIndex == 6) {
                                      ServiceModel _serviceModel;
                                      _serviceModel =
                                          widget.serviceModel.copyWith(
                                        createdBy:
                                            _userRepository.getUser().userID,
                                        serviceName: _serviceName.text,
                                        serviceType: [_serviceType.text],
                                        serviceOffered: [_serviceOffered.text],
                                        phone: [_mPhone.text],
                                        photo1: _photo.text,
                                        languages: [_mLanguage.text],
                                        timeInterval:
                                            double.tryParse(_timeInterval.text),
                                        state: _state.text,
                                        town: _town.text,
                                        zipCode: double.parse(_zipCode.text),
                                        address: _address.text,
                                        geoHash: _geoHash.text,
                                        latitude: double.parse(_latitude.text),
                                        longitude:
                                            double.parse(_longitude.text),
                                        biography: _biography.text,
                                        category: _category.text,
                                        email: _email.text,
                                        startDate: _startDate,
                                        endDate: _endDate,
                                        hasapt: hasAppointment,
                                        hasrapt: hasrapt,
                                        hasqapt: hasqapt,
                                        hasvapt: hasvapt,
                                        aptpslots:
                                            int.tryParse(aptpslots.text ?? ""),
                                        apttype: apttype.text,
                                        hasecom: hasecom,
                                        justlisting: justlisting,
                                        hasrent: hasrent,
                                        onlyallowedregisteredecom:
                                            onlyallowedregisteredecom,
                                        requirepaymentecom: requirepaymentecom,
                                        doinventorymanagement:
                                            doinventorymanagement,
                                        hasregistration: hasregistration,
                                        hasfeemanagement: hasfeemanagement,
                                        hasfscan: hasfscan,
                                        requirepaymentapt: requirepaymentapt,
                                        hastrip: hastrip,
                                        hasexternalmanagedtrips:
                                            hasexternalmanagedtrips,
                                        hasadhoctrips: hasadhoctrips,
                                        requirecutomerregistration:
                                            requirecutomerregistration,
                                        requirepayment: requirepayment,
                                        requireticketing: requireticketing,
                                        onlinetripbooking: onlinetripbooking,
                                        mainatainenceservicerequest:
                                            mainatainenceservicerequest,
                                        hassecurity: hassecurity,
                                        requirepaymentaptreg:
                                            requirepaymentaptreg,
                                        t_fri: _daysList,
                                        t_mon: _daysList,
                                        t_sat: _daysList,
                                        t_sun: _daysList,
                                        t_thu: _daysList,
                                        t_tue: _daysList,
                                        t_wed: _daysList,
                                        // t_fri: _daysList["fri"],
                                        // t_mon: _daysList["mon"],
                                        // t_sat: _daysList["sat"],
                                        // t_sun: _daysList["sun"],
                                        // t_thu: _daysList["thu"],
                                        // t_tue: _daysList["tue"],
                                        // t_wed: _daysList["wed"],

                                        // isMobile: isMobile,
                                        // locationShared: locationShared,
                                        // areaname: _areaOrSector,
                                        // societyName: _societyName,
                                      );
                                      if (widget.update) {
                                        _serviceBloc.add(
                                          UpdateServiceEvent(
                                              request: _serviceModel),
                                        );
                                      } else {
                                        _serviceBloc.add(
                                          CreateServiceEvent(
                                              request: _serviceModel),
                                        );
                                      }
                                    }
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant CreateServicePage oldWidget) {
    if (currentIndex != currentIndex) {
      _initFilledValid();
      controller.jumpTo(0);
    }
    super.didUpdateWidget(oldWidget);
  }

  // Widget customSwitch({
  //   String title,
  //   bool isEnabled = true,
  //   void Function(bool) onChange,
  // }) {
  //   return Row(
  //     children: [
  //       Text(
  //         title ?? "Has Security ?",
  //         style: Styles.lightText(size: 16),
  //       ),
  //       Spacer(),
  //       CupertinoSwitch(
  //         onChanged: onChange ?? (e) {},
  //         value: isEnabled,
  //         activeColor: ColorConstants.primaryColor,
  //       ),
  //     ],
  //   );
  // }
  Widget customSwitch({
    String title,
    bool isEnabled = true,
    void Function(bool) onChange,
    // bool value,
  }) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.spaceBetween,

        // spacing: double.infinity,
        // runAlignment: WrapAlignment.end,

        children: [
          Expanded(
            child: Text(
              title ?? "Has Security ?",
              style: Styles.lightText(size: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Spacer(),
              // Expanded(child: SizedBox.expand()),
              Radio<bool>(
                groupValue: isEnabled,
                onChanged: onChange ?? (e) {},
                value: true,
                activeColor: ColorConstants.primaryColor,
              ),
              Text(
                "Yes",
                style: Styles.lightText(size: 12),
              ),
              Radio<bool>(
                groupValue: isEnabled,
                onChanged: onChange ?? (e) {},
                value: false,
                activeColor: ColorConstants.primaryColor,
              ),
              Text(
                "No",
                style: Styles.lightText(size: 12),
              ),
            ],
          ),
          // CupertinoSwitch(
          //   onChanged: onChange ?? (e) {},
          //   value: isEnabled,
          //   activeColor: ColorConstants.primaryColor,
          // ),
        ],
      ),
    );
  }

  void _handleCreateResponse(CreateServiceState state) {
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

  void _handleUpdateResponse(UpdateServiceState state) {
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

  Widget _firstStep() {
    return Visibility(
      visible: currentIndex == 1,
      child: Column(
        children: [
          CustomImageUploader(
            initialValue: widget.serviceModel?.photo1,
            controller: _photo,
            path: "Services/${widget.serviceModel?.createdBy}",
            validate: Validate.withOption(
              isRequired: true,
              maxLength: 250,
            ),
          ),
          CustomTextField(
            initialValue: widget.serviceModel?.serviceName,
            title: "Service Name",
            controller: _serviceName,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomDropDownList<String>(
            displayName: (x) => x,
            loadData: () async => serviceType,
            initialValue: widget.serviceModel?.serviceType?.first,
            title: "Service Type",
            controller: _serviceType,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          customSwitch(
            title: 'Are you mobile?',
            isEnabled: isMobile,
            onChange: (value) => setState(() => isMobile = value),
          ),
          customSwitch(
            title: 'Share location?',
            isEnabled: locationShared,
            onChange: (value) => setState(() => locationShared = value),
          ),

          /*  CustomDropDownList<String>(
            initialValue: widget.serviceModel?.serviceOffered?.first,
            title: "Service Offered",
            controller: _serviceOffered,
            loadData: () async => serviceOffered.toList(),
            displayName: (x) => x,
            validate: Validate.withOption(isRequired: true),
          ),
          customSwitch(
            title: 'Has Registration',
            isEnabled: hasregistration,
            onChange: (value) => setState(() => hasregistration = value),
          ),
          CustomTextField(
            initialValue: widget.serviceModel?.timeInterval?.toString(),
            title: "Time Interval",
            controller: _timeInterval,
            validate: Validate.withOption(isRequired: true, isNumber: true),
          ),
          CustomDropDownList<String>(
            initialValue: widget.serviceModel?.languages?.first,
            title: "Language",
            controller: _mLanguage,
            loadData: () async => languages.toList(),
            displayName: (x) => x,
            validate: Validate.withOption(isRequired: true), 
          ),
          */
        ],
      ),
    );
  }

  Widget screen2() {
    // Service Contact Details
    return Visibility(
      visible: currentIndex == 2,
      child: Column(
        children: [
          CustomTextField(
            initialValue: widget.serviceModel?.phone?.first,
            title: "Phone",
            controller: _mPhone,
            validate: Validate.withOption(
              isRequired: true,
              isNumber: true,
            ),
          ),
          CustomTextField(
            initialValue: widget.serviceModel?.email,
            title: "Email",
            controller: _email,
            validate: Validate.withOption(
              isRequired: true,
              isEmail: true,
            ),
          ),
          customSwitch(
            title: 'Use current location',
            isEnabled: currentLocation,
            onChange: (value) {
              setState(() {
                currentLocation = value;

                LatLng location = LatLng(
                  widget.serviceModel.latitude,
                  widget.serviceModel.longitude,
                );
                PickedLocation result = PickedLocation(
                  // id: result.placeId,
                  // address: result.formattedAddress,
                  latitude: location.latitude,
                  longitude: location.longitude,
                );
                _state.text = result.state;
                _town.text = result.town;
                _zipCode.text = result.zipCode;
                _address.text = result.address;
              });
            },
          ),

          // CustomAddressPicker(
          //   controller: _address,
          //   displayData: (data) => data.address,
          //   initialPosition: widget.serviceModel.latitude == null ||
          //           widget.serviceModel.longitude == null
          //       ? null
          //       : LatLng(
          //           widget.serviceModel.latitude,
          //           widget.serviceModel.longitude,
          //         ),
          //   initialValue: widget.serviceModel?.address,
          //   title: "Address",
          //   onPickLocation: (result) {
          //     _state.text = result.state;
          //     _town.text = result.town;
          //     _zipCode.text = result.zipCode;
          //     _address.text = result.address;
          //     _geoHash.text = result.geoHash;
          //     _latitude.text = result.latitude?.toString();
          //     _longitude.text = result.longitude?.toString();
          //   },
          //   validate: Validate.withOption(isRequired: true, maxLength: 250),
          // ),
          CustomDropDownList<String>(
            initialValue: widget.serviceModel?.state,
            // title: "State",
            title: "Select your state",
            controller: _state,
            displayName: (data) => data,
            loadData: () async =>
                widget.places.map((e) => e.state).toSet().toList(),
            onSelected: (value, index) => setState(() {}),
            validate: Validate.withOption(isRequired: true),
          ),
          CustomDropDownList<String>(
            initialValue: widget.serviceModel?.town,
            // title: "Town",
            title: "Select your District",
            controller: _town,
            displayName: (data) => data,
            onSelected: (value, index) => setState(() {}),
            shouldReload: true,
            loadData: () async => widget.places
                .where((e) => e.state == _state.text)
                .map((e) => e.district)
                .toSet()
                .toList(),
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomDropDownList<String>(
            initialValue: widget.serviceModel?.zipCode?.toString(),
            // title: "Zip Code",
            title: "Select your Village",
            controller: _zipCode,
            displayName: (data) => data,
            shouldReload: true,
            loadData: () async => widget.places
                .where((e) => e.district == _town.text)
                .map((e) => e.zipCode)
                .toSet()
                .toList(),
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomTextField(
            initialValue: widget.serviceModel?.serviceName,
            title: "Area/Sector",
            controller: _areaOrSector,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomTextField(
            initialValue: widget.serviceModel?.serviceName,
            title: "Society Name",
            controller: _societyName,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),

          CustomTextField(
            initialValue: widget.serviceModel?.address,
            title: "Address Line 1",
            controller: _address,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),

/* 
          CustomTextField(
            enabled: false,
            initialValue: widget.serviceModel?.geoHash,
            title: "Geo Hash",
            controller: _geoHash,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomTextField(
            enabled: false,
            initialValue: widget.serviceModel?.latitude?.toString(),
            title: "Latitude",
            controller: _latitude,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomTextField(
            enabled: false,
            initialValue: widget.serviceModel?.longitude?.toString(),
            title: "Longitude",
            controller: _longitude,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ), */
        ],
      ),
    );
  }

  Widget screen3() {
    // Edit Housers
    return Visibility(
      visible: currentIndex == 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Open/Close Time",
            textAlign: TextAlign.left,
            style: Styles.semiBoldText(size: 20),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Icon(Icons.watch_later_outlined),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 12.0,
                    right: 4.0,
                    bottom: 12.0,
                    left: 12.0,
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        child: Row(
                          children: List.generate(
                            _daysList.length,
                            (index) {
                              return GestureDetector(
                                  onTap: () {
                                    String selectedDay =
                                        _daysList.keys.toList()[index];
                                    _daysList.forEach((day, value) {
                                      if (day != selectedDay) {
                                        _daysList[day] = false;
                                      } else {
                                        setState(() {
                                          _daysList[day] = !_daysList[day];
                                        });
                                      }
                                    });
                                  },
                                  child: DayItem(
                                    dayName: _daysList.keys.toList()[index],
                                    isSelected:
                                        _daysList.values.toList()[index],
                                    // _daysList.keys.toList()[index] == _chosenDay,
                                  ));
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 25.0),
                      Text(
                        "Work Time",
                        style: Styles.semiBoldText(size: 16),
                      ),
                      CustomTextField(
                        // initialValue: widget.serviceModel?.serviceName,
                        // title: "Work Time",
                        title: "",
                        margin: EdgeInsets.only(bottom: 24.0),
                        controller: _workTime,
                        validate: Validate.withOption(
                          isRequired: true,
                        ),
                      ),
                      /*  
                      CustomDateTimePicker(
                        controller: _startDateController,
                        dateTime: _startDate,
                        title: 'Start Date',
                        mode: DateTimeMode.TIME,
                        onChange: (x) => _startDate = x,
                      ), 
                      */
                      Text(
                        "Lunch Time",
                        style: Styles.semiBoldText(size: 16),
                      ),
                      CustomTextField(
                        // initialValue: widget.serviceModel?.serviceName,
                        title: "",
                        margin: EdgeInsets.only(bottom: 24.0),
                        controller: _lunchTime,
                        validate: Validate.withOption(
                          isRequired: true,
                        ),
                      ),
                      /*      
                      CustomDateTimePicker(
                        controller: _endDateController,
                        dateTime: _endDate,
                        title: 'End Date',
                        mode: DateTimeMode.TIME,
                        onChange: (x) => _endDate = x,
                      ), 
                      */
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget screen4() {
    // Appointment
    return Visibility(
      visible: currentIndex == 4,
      child: Column(
        children: [
          customSwitch(
            // title: 'Has Appointment',
            title: 'Do you want to give appointment?',
            isEnabled: hasAppointment,
            onChange: (value) => setState(() => hasAppointment = value),
          ),
          Visibility(
            visible: hasAppointment,
            child: customSwitch(
              // title: 'Has regular Appointment',
              title:
                  'Do you want to give fixed time appointment for home visit?',
              isEnabled: hasrapt,
              onChange: (value) => setState(() => hasrapt = value),
            ),
          ),
          Visibility(
            visible: hasAppointment,
            child: customSwitch(
              // title: 'Has q Appointment',
              title: 'Do you want to give Fixed time appointment for shop?',
              isEnabled: hasqapt,
              onChange: (value) => setState(() => hasqapt = value),
            ),
          ),
          customSwitch(
            // title: 'Has visit to Home',
            title: 'Do you want to give Check In (queue) for Shop?',
            isEnabled: hasvapt,
            onChange: (value) => setState(() => hasvapt = value),
          ),
          customSwitch(
            title:
                'Do you want to give option to select Staff member (providing services)',
            isEnabled: hasvapt,
            onChange: (value) => setState(() => hasvapt = value),
          ),
          // Visibility(
          //   visible: hasAppointment,
          //   child: CustomTextField(
          //     initialValue: widget.serviceModel?.aptpslots?.toString(),
          //     controller: aptpslots,
          //     title: 'Appointment slots',
          //     validate: Validate.withOption(isRequired: true, isNumber: true),
          //   ),
          // ),
          // Visibility(
          //   visible: hasAppointment,
          //   child: CustomDropDownList<String>(
          //     initialValue: widget.serviceModel?.apttype,
          //     title: 'Appointment type',
          //     displayName: (data) => data,
          //     loadData: () async => ["PERSTORE", "PEREMPLOYEE"],
          //     controller: apttype,
          //     validate: Validate.withOption(isRequired: true),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget screen5() {
    // E-commerce
    return Visibility(
      visible: currentIndex == 5,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customSwitch(
            // title: 'Has Ecom',
            title: 'Will you to sell products?',
            isEnabled: hasecom,
            onChange: (value) => setState(() => hasecom = value),
          ),
          Visibility(
            visible: hasecom,
            child: customSwitch(
              // title: 'Just Listing',
              title: 'Do you need shopping cart?',
              isEnabled: justlisting,
              onChange: (value) => setState(() => justlisting = value),
            ),
          ),
          // Visibility(
          //   visible: hasecom,
          //   child: customSwitch(
          //     title: 'Has Rent',
          //     isEnabled: hasrent,
          //     onChange: (value) => setState(() => hasrent = value),
          //   ),
          // ),
          // Visibility(
          //   visible: hasecom,
          //   child: customSwitch(
          //     title: 'Only allowen Registered Ecommerce',
          //     isEnabled: onlyallowedregisteredecom,
          //     onChange: (value) =>
          //         setState(() => onlyallowedregisteredecom = value),
          //   ),
          // ),
          Visibility(
            visible: hasecom && justlisting,
            child: customSwitch(
              // title: 'Require Payment Ecommerce',
              title: 'Payment gateway',
              isEnabled: requirepaymentecom,
              onChange: (value) => setState(() => requirepaymentecom = value),
            ),
          ),
          Visibility(
            visible: hasecom && justlisting,
            child: customSwitch(
              // title: 'Do Inentory Management',
              title: 'Manage inventory',
              isEnabled: doinventorymanagement,
              onChange: (value) =>
                  setState(() => doinventorymanagement = value),
            ),
          ),
        ],
      ),
    );
  }

  Widget screen6() {
    // Transportation
    return Visibility(
      visible: currentIndex == 6,
      child: Column(
        children: [
          customSwitch(
            // title: 'Has Trip',
            title: 'Do you want to manage transport?',
            isEnabled: hastrip,
            onChange: (value) => setState(() => hastrip = value),
          ),
          Visibility(
            visible: hastrip,
            child: customSwitch(
              // title: 'Has External trip Management',
              title: 'Do you require trip management?',
              isEnabled: hasexternalmanagedtrips,
              onChange: (value) =>
                  setState(() => hasexternalmanagedtrips = value),
            ),
          ),
          // Visibility(
          //   visible: hastrip,
          //   child: customSwitch(
          //     title: 'Has Adhoc Trips',
          //     isEnabled: hasadhoctrips,
          //     onChange: (value) => setState(() => hasadhoctrips = value),
          //   ),
          // ),
          // Visibility(
          //   visible: hastrip,
          //   child: customSwitch(
          //     title: 'Require Customer Registration',
          //     isEnabled: requirecutomerregistration,
          //     onChange: (value) =>
          //         setState(() => requirecutomerregistration = value),
          //   ),
          // ),
          // Visibility(
          //   visible: hastrip,
          //   child: customSwitch(
          //     title: 'Require Payment',
          //     isEnabled: requirepayment,
          //     onChange: (value) => setState(() => requirepayment = value),
          //   ),
          // ),
          Visibility(
            visible: hastrip && hasexternalmanagedtrips,
            child: customSwitch(
              // title: 'Require Tickiting',
              title: 'Do you want to provide ticketing?',
              isEnabled: requireticketing,
              onChange: (value) => setState(() => requireticketing = value),
            ),
          ),
          Visibility(
            // ?bool 2
            visible: hastrip,
            child: customSwitch(
              // title: 'Online Trip Booking',
              title: 'Do you want to provide booking as appointment?',
              isEnabled: onlinetripbooking,
              onChange: (value) => setState(() => onlinetripbooking = value),
            ),
          ),
        ],
      ),
    );
  }

  Widget screen7() {
    // Registration
    return Visibility(
      visible: currentIndex == 7,
      child: Column(
        children: [
          customSwitch(
            // title: 'Has Registration',
            title: 'Do you want to need registration of your client?',
            isEnabled: hasregistration,
            onChange: (value) => setState(() => hasregistration = value),
          ),
          Visibility(
            visible: hasregistration,
            child: customSwitch(
              // title: 'Has fee management',
              title: 'Do you require fee management?',
              isEnabled: hasfeemanagement,
              onChange: (value) => setState(() => hasfeemanagement = value),
            ),
          ),
          Visibility(
            visible: hasregistration && hasfeemanagement,
            child: customSwitch(
              // title: 'Has fee scan',
              title:
                  'Do you require QR Code scanning to know fee payment status?',
              isEnabled: hasfscan,
              onChange: (value) => setState(() => hasfscan = value),
            ),
          ),
          Visibility(
            // bool 1
            visible: hasregistration,
            child: customSwitch(
              // title: 'Do you want to provide transport to students/user?',
              title: 'Do you want to provide transport to students/user??',
              isEnabled: hasfscan,
              onChange: (value) => setState(() => hasfscan = value),
            ),
          ),
          // Visibility(
          //   visible: hasregistration,
          //   child: customSwitch(
          //     title: 'Require Payment',
          //     isEnabled: requirepaymentapt,
          //     onChange: (value) => setState(() => requirepaymentapt = value),
          //   ),
          // ),
        ],
      ),
    );
  }
/* 
  Widget _secondStep() {
    return Visibility(
      visible: currentIndex == 2,
      child: Column(
        children: [
    );
  }
  Widget _thirstStep() {
    return Visibility(
      visible: currentIndex == 3,
      child: Column(
        children: [
          CustomTextField(
            initialValue: widget.serviceModel?.biography,
            title: "Biography",
            controller: _biography,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomTextField(
            initialValue: widget.serviceModel?.category,
            title: "Category",
            controller: _category,
            validate: Validate.withOption(isRequired: true),
          ),
          CustomDateTimePicker(
            controller: _startDateController,
            dateTime: _startDate,
            title: 'Start Date',
            mode: DateTimeMode.DATETIME,
            onChange: (x) => _startDate = x,
          ),
          CustomDateTimePicker(
            controller: _endDateController,
            dateTime: _endDate,
            title: 'End Date',
            mode: DateTimeMode.DATETIME,
            onChange: (x) => _endDate = x,
          ),
          customSwitch(
            title: "Independent Complex",
          ),
          Utility.size(height: 20),
        ],
      ),
    );
  }

  Widget _fourthStep() {
    return Visibility(
      visible: currentIndex == 4,
      child: Column(
        children: [
          customSwitch(
            title: "mainatainence service request",
            isEnabled: mainatainenceservicerequest,
            onChange: (value) =>
                setState(() => mainatainenceservicerequest = value),
          ),
          customSwitch(
            title: "has security",
            isEnabled: hassecurity,
            onChange: (value) => setState(() => hassecurity = value),
          ),
          customSwitch(
            title: "require payment",
            isEnabled: requirepaymentaptreg,
            onChange: (value) => setState(() => requirepaymentaptreg = value),
          ),
          Utility.size(height: 50),
        ],
      ),
    );
  }
 */
}

class DayItem extends StatelessWidget {
  final String dayName;
  final bool isSelected;

  const DayItem({this.dayName, this.isSelected = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color:
              isSelected ? ColorConstants.primaryColor /* Colors.blue */ : null,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      width: width * 10.79,
      height: height * 10.79,
      alignment: Alignment.center,
      child: Text(
        dayName.replaceFirst(dayName[0], dayName[0].toUpperCase()),
        style: tileSubTitle.copyWith(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 14),
      ),
    );
  }
}
