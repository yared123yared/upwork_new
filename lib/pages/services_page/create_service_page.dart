import 'package:complex/blocs/service_bloc.dart';
import 'package:complex/common/helputil.dart';
import 'package:complex/data/api/api_service.dart';
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
import 'package:complex/pages/complex_pages/custom_address_picker.dart';
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
      if (!_serviceOffered.isValid) valid = false;
      if (!_mPhone.isValid) valid = false;
      if (!_mLanguage.isValid) valid = false;
      if (!_timeInterval.isValid) valid = false;
    } else if (currentIndex == 2) {
      if (!_state.isValid) valid = false;
      if (!_town.isValid) valid = false;
      if (!_zipCode.isValid) valid = false;
      if (!_address.isValid) valid = false;
      if (!_geoHash.isValid) valid = false;
      if (!_latitude.isValid) valid = false;
      if (!_longitude.isValid) valid = false;
    } else if (currentIndex == 3) {
      if (!_biography.isValid) valid = false;
      if (!_category.isValid) valid = false;
      if (!_email.isValid) valid = false;
      if (_startDate.isAfter(_endDate)) {
        Utility.showSnackBar(
            key: _key, message: "Start Date must be before end date");
        valid = false;
      }
    } else if (currentIndex == 4) {
      if (hasAppointment && !aptpslots.isValid) valid = false;
      if (hasAppointment && !apttype.isValid) valid = false;
    }
    return valid;
  }

  ///this do the init of the switchs
  ///the custom text fields has its owen initvalue parameter
  Future _initFilledValid() async {
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
                  onTap: (){
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
                  child: ListView(
                    controller: controller,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    children: <Widget>[
                      Center(child: _progress()),
                      _firstStep(),
                      _secondStep(),
                      _thirstStep(),
                      _fourthStep(),
                      CustomButton(
                        text: currentIndex < 4
                            ? "Next"
                            : widget.update
                                ? "Update"
                                : "Add",
                        borderColor: ColorConstants.primaryColor,
                        onTap: () async {
                          if (_validate()) {
                            if (currentIndex == 1) {
                              setState(() {
                                currentIndex = 2;
                              });
                            } else if (currentIndex == 2) {
                              setState(() {
                                currentIndex = 3;
                              });
                            } else if (currentIndex == 3) {
                              setState(() {
                                currentIndex = 4;
                              });
                            } else if (currentIndex == 4) {
                              ServiceModel _serviceModel;
                              _serviceModel = widget.serviceModel.copyWith(
                                createdBy: _userRepository.getUser().userID,
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
                                longitude: double.parse(_longitude.text),
                                biography: _biography.text,
                                category: _category.text,
                                email: _email.text,
                                startDate: _startDate,
                                endDate: _endDate,
                                hasapt: hasAppointment,
                                hasrapt: hasrapt,
                                hasqapt: hasqapt,
                                hasvapt: hasvapt,
                                aptpslots: int.tryParse(aptpslots.text ?? ""),
                                apttype: apttype.text,
                                hasecom: hasecom,
                                justlisting: justlisting,
                                hasrent: hasrent,
                                onlyallowedregisteredecom:
                                    onlyallowedregisteredecom,
                                requirepaymentecom: requirepaymentecom,
                                doinventorymanagement: doinventorymanagement,
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
                                requirepaymentaptreg: requirepaymentaptreg,
                              );
                              if (widget.update) {
                                _serviceBloc.add(
                                  UpdateServiceEvent(request: _serviceModel),
                                );
                              } else {
                                _serviceBloc.add(
                                  CreateServiceEvent(request: _serviceModel),
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

  Widget customSwitch({
    String title,
    bool isEnabled = true,
    void Function(bool) onChange,
  }) {
    return Row(
      children: [
        Text(
          title ?? "Has Security ?",
          style: Styles.lightText(size: 16),
        ),
        Spacer(),
        CupertinoSwitch(
          onChanged: onChange ?? (e) {},
          value: isEnabled,
          activeColor: ColorConstants.primaryColor,
        ),
      ],
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
            validate:  Validate.withOption(
              isRequired: true,
              maxLength: 250,
            ),
          ),
          CustomTextField(
            initialValue: widget.serviceModel?.serviceName,
            title: "Service Name",
            controller: _serviceName,
            validate:  Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomTextField(
            initialValue: widget.serviceModel?.serviceType?.first,
            title: "Service Type",
            controller: _serviceType,
            validate:  Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomTextField(
            initialValue: widget.serviceModel?.phone?.first,
            title: "Phone",
            controller: _mPhone,
            validate:  Validate.withOption(
              isRequired: true,
              isNumber: true,
            ),
          ),
          CustomTextField(
            initialValue: widget.serviceModel?.timeInterval?.toString(),
            title: "Time Interval",
            controller: _timeInterval,
            validate:
                 Validate.withOption(isRequired: true, isNumber: true),
          ),
          CustomDropDownList<String>(
            initialValue: widget.serviceModel?.serviceOffered?.first,
            title: "Service Offered",
            controller: _serviceOffered,
            loadData: () async => serviceOffered.toList(),
            displayName: (x) => x,
            validate:  Validate.withOption(isRequired: true),
          ),
          CustomDropDownList<String>(
            initialValue: widget.serviceModel?.languages?.first,
            title: "Language",
            controller: _mLanguage,
            loadData: () async => languages.toList(),
            displayName: (x) => x,
            validate:  Validate.withOption(isRequired: true),
          ),
        ],
      ),
    );
  }

  Widget _secondStep() {
    return Visibility(
      visible: currentIndex == 2,
      child: Column(
        children: [
          CustomAddressPicker(
            controller: _address,
            displayData: (data) => data.address,
            initialPosition: widget.serviceModel.latitude == null ||
                    widget.serviceModel.longitude == null
                ? null
                : LatLng(
                    widget.serviceModel.latitude,
                    widget.serviceModel.longitude,
                  ),
            initialValue: widget.serviceModel?.address,
            title: "Address",
            onPickLocation: (result) {
              _state.text = result.state;
              _town.text = result.town;
              _zipCode.text = result.zipCode;
              _address.text = result.address;
              _geoHash.text = result.geoHash;
              _latitude.text = result.latitude?.toString();
              _longitude.text = result.longitude?.toString();
            },
            validate: Validate.withOption(isRequired: true, maxLength: 250),
          ),
          CustomDropDownList<String>(
            initialValue: widget.serviceModel?.state,
            title: "State",
            controller: _state,
            displayName: (data) => data,
            loadData: () async =>
                widget.places.map((e) => e.state).toSet().toList(),
            onSelected: (value, index) => setState(() {}),
            validate:  Validate.withOption(isRequired: true),
          ),
          CustomDropDownList<String>(
            initialValue: widget.serviceModel?.town,
            title: "Town",
            controller: _town,
            displayName: (data) => data,
            onSelected: (value, index) => setState(() {}),
            shouldReload: true,
            loadData: () async => widget.places
                .where((e) => e.state == _state.text)
                .map((e) => e.district)
                .toSet()
                .toList(),
            validate:  Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomDropDownList<String>(
            initialValue: widget.serviceModel?.zipCode?.toString(),
            title: "Zip Code",
            controller: _zipCode,
            displayName: (data) => data,
            shouldReload: true,
            loadData: () async => widget.places
                .where((e) => e.district == _town.text)
                .map((e) => e.zipCode)
                .toSet()
                .toList(),
            validate:  Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomTextField(
            enabled: false,
            initialValue: widget.serviceModel?.geoHash,
            title: "Geo Hash",
            controller: _geoHash,
            validate:  Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomTextField(
            enabled: false,
            initialValue: widget.serviceModel?.latitude?.toString(),
            title: "Latitude",
            controller: _latitude,
            validate:  Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomTextField(
            enabled: false,
            initialValue: widget.serviceModel?.longitude?.toString(),
            title: "Longitude",
            controller: _longitude,
            validate:  Validate.withOption(
              isRequired: true,
            ),
          ),
        ],
      ),
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
            validate:  Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomTextField(
            initialValue: widget.serviceModel?.category,
            title: "Category",
            controller: _category,
            validate:  Validate.withOption(isRequired: true),
          ),
          CustomTextField(
            initialValue: widget.serviceModel?.email,
            title: "Email",
            controller: _email,
            validate:  Validate.withOption(
              isRequired: true,
              isEmail: true,
            ),
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
            title: 'Has Appointment',
            isEnabled: hasAppointment,
            onChange: (value) => setState(() => hasAppointment = value),
          ),
          Visibility(
            visible: hasAppointment,
            child: customSwitch(
              title: 'Has regular Appointment',
              isEnabled: hasrapt,
              onChange: (value) => setState(() => hasrapt = value),
            ),
          ),
          Visibility(
            visible: hasAppointment,
            child: customSwitch(
              title: 'Has q Appointment',
              isEnabled: hasqapt,
              onChange: (value) => setState(() => hasqapt = value),
            ),
          ),
          customSwitch(
            title: 'Has visit to Home',
            isEnabled: hasvapt,
            onChange: (value) => setState(() => hasvapt = value),
          ),
          Visibility(
            visible: hasAppointment,
            child: CustomTextField(
              initialValue: widget.serviceModel?.aptpslots?.toString(),
              controller: aptpslots,
              title: 'Appointment slots',
              validate: Validate.withOption(isRequired: true, isNumber: true),
            ),
          ),
          Visibility(
            visible: hasAppointment,
            child: CustomDropDownList<String>(
              initialValue: widget.serviceModel?.apttype,
              title: 'Appointment type',
              displayName: (data) => data,
              loadData: () async => ["PERSTORE", "PEREMPLOYEE"],
              controller: apttype,
              validate: Validate.withOption(isRequired: true),
            ),
          ),
          customSwitch(
            title: 'Has Ecom',
            isEnabled: hasecom,
            onChange: (value) => setState(() => hasecom = value),
          ),
          Visibility(
            visible: hasecom,
            child: customSwitch(
              title: 'Just Listing',
              isEnabled: justlisting,
              onChange: (value) => setState(() => justlisting = value),
            ),
          ),
          Visibility(
            visible: hasecom,
            child: customSwitch(
              title: 'Has Rent',
              isEnabled: hasrent,
              onChange: (value) => setState(() => hasrent = value),
            ),
          ),
          Visibility(
            visible: hasecom,
            child: customSwitch(
              title: 'Only allowen Registered Ecommerce',
              isEnabled: onlyallowedregisteredecom,
              onChange: (value) =>
                  setState(() => onlyallowedregisteredecom = value),
            ),
          ),
          Visibility(
            visible: hasecom,
            child: customSwitch(
              title: 'Require Payment Ecommerce',
              isEnabled: requirepaymentecom,
              onChange: (value) => setState(() => requirepaymentecom = value),
            ),
          ),
          Visibility(
            visible: hasecom,
            child: customSwitch(
              title: 'Do Inentory Management',
              isEnabled: doinventorymanagement,
              onChange: (value) =>
                  setState(() => doinventorymanagement = value),
            ),
          ),
          customSwitch(
            title: 'Has Registration',
            isEnabled: hasregistration,
            onChange: (value) => setState(() => hasregistration = value),
          ),
          Visibility(
            visible: hasregistration,
            child: customSwitch(
              title: 'Has fee management',
              isEnabled: hasfeemanagement,
              onChange: (value) => setState(() => hasfeemanagement = value),
            ),
          ),
          Visibility(
            visible: hasregistration,
            child: customSwitch(
              title: 'Has fee scan',
              isEnabled: hasfscan,
              onChange: (value) => setState(() => hasfscan = value),
            ),
          ),
          Visibility(
            visible: hasregistration,
            child: customSwitch(
              title: 'Require Payment',
              isEnabled: requirepaymentapt,
              onChange: (value) => setState(() => requirepaymentapt = value),
            ),
          ),
          customSwitch(
            title: 'Has Trip',
            isEnabled: hastrip,
            onChange: (value) => setState(() => hastrip = value),
          ),
          Visibility(
            visible: hastrip,
            child: customSwitch(
              title: 'Has External trip Management',
              isEnabled: hasexternalmanagedtrips,
              onChange: (value) =>
                  setState(() => hasexternalmanagedtrips = value),
            ),
          ),
          Visibility(
            visible: hastrip,
            child: customSwitch(
              title: 'Has Adhoc Trips',
              isEnabled: hasadhoctrips,
              onChange: (value) => setState(() => hasadhoctrips = value),
            ),
          ),
          Visibility(
            visible: hastrip,
            child: customSwitch(
              title: 'Require Customer Registration',
              isEnabled: requirecutomerregistration,
              onChange: (value) =>
                  setState(() => requirecutomerregistration = value),
            ),
          ),
          Visibility(
            visible: hastrip,
            child: customSwitch(
              title: 'Require Payment',
              isEnabled: requirepayment,
              onChange: (value) => setState(() => requirepayment = value),
            ),
          ),
          Visibility(
            visible: hastrip,
            child: customSwitch(
              title: 'Require Tickiting',
              isEnabled: requireticketing,
              onChange: (value) => setState(() => requireticketing = value),
            ),
          ),
          Visibility(
            visible: hastrip,
            child: customSwitch(
              title: 'Online Trip Booking',
              isEnabled: onlinetripbooking,
              onChange: (value) => setState(() => onlinetripbooking = value),
            ),
          ),
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
}
