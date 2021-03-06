import 'package:complex/application/explore/ecom/product_owner/product_owner_bloc.dart';
import 'package:complex/blocs/product_bloc.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/data/providers/channel_provider.dart';

import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';
import 'package:complex/main.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/custom_slide_transition.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/common/widgets/selection_button.dart';
import 'package:complex/view/auth_pages/auth_page.dart';
import 'package:complex/view/property_pages/property_type.dart';
import 'package:complex/view/property_pages/service_type.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:complex/view/widget/error_dialogue.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:injector/injector.dart';
import 'package:intl/intl.dart';
//missing some fields
//_facingSide =widget.realEstate.data
//tenant preference
class AddPropertyPage extends StatefulWidget {
  final ContactDetailsModel contactDetail;
  final CompleteRealEstate realEstate;
  final String entitytype;
  final String entityid;
  final bool isService;
  final int origin;
  AddPropertyPage(this.contactDetail, {this.realEstate,@required String this.entitytype, @required String this.entityid,@required this.isService,@required this.origin});

  _AddPropertyPage createState() => _AddPropertyPage();
}

class _AddPropertyPage extends State<AddPropertyPage> {
  ScrollController _scrollController = ScrollController();
  CustomTextFieldController _title = CustomTextFieldController();
  CustomTextFieldController _description = CustomTextFieldController();
  CustomTextFieldController _price = CustomTextFieldController();
  CustomTextFieldController _discountController = CustomTextFieldController();
  int currentSegment = 0;
  int _pageIndex = 0;
  int _score = 0;
  int _progress = 12;
  DateTime _discountStartDate;
  DateTime _discountEndDate;
  String _furnishingStatus = '';
  String _saleType = '';
  String _contructionType = '';
  String _ownershipStatus = '';
  int _bedRooms = 0;
  int _bathRooms = 0;
  int _sqFeet = 0;
  String _serviceType = '';
  String _propertyType = '';
  String _categoryType = '';
  String _facingSide = '';
  String _tenants = '';
  List<String> _amenities = [];
  bool _isRegistering = false;
  List<String> _photos = [];
  ChannelsProvider _channelsProvider =
      Injector.appInstance.get<ChannelsProvider>();
  bool _isLoading = false;
  ProductOwnerBloc _productBloc;
  var _key = GlobalKey<ScaffoldState>();

  Future _initFiledValue() async {
    if (widget.realEstate != null)
    {
      currentSegment=widget.realEstate.data.listingownertype=="Broker"?0:1;

      _serviceType =widget.realEstate.data.servicetype;
      _propertyType=widget.realEstate.data.usagetype;
      _categoryType =widget.realEstate.data.propertytype;
      _photos =widget.realEstate.data.imagelist;
      _saleType =widget.realEstate.data.saletype;
      _ownershipStatus = widget.realEstate.data.ownershiptype;
      _furnishingStatus=widget.realEstate.data.furnishedstatus;
      _bedRooms =widget.realEstate.data.numrooms;
      _bathRooms =widget.realEstate.data.numbath;
      _sqFeet =widget.realEstate.data.sqfeetarea;
      //_facingSide =widget.realEstate.data
      //tenant preference
      if(widget.realEstate.data.has24hrwater) _amenities.add("24xWater");
      if(widget.realEstate.data.hastv) _amenities.add("TV");
    if(widget.realEstate.data.hasfridge) _amenities.add("Fridge");
    if(widget.realEstate.data.hascooler) _amenities.add("Cooler");
    if(widget.realEstate.data.hasairconditioner) _amenities.add("AirConditioner");
    if(widget.realEstate.data.hasinternet) _amenities.add("Internet/Wifi");
    if(widget.realEstate.data.hasgreenarea) _amenities.add("GreenArea");
    if(widget.realEstate.data.hasparking) _amenities.add("Parking");
    if(widget.realEstate.data.hasgaspipeline) _amenities.add("GasPipeLine");
    if(widget.realEstate.data.hassecurity) _amenities.add("Security");
    if(widget.realEstate.data.hasclubhouse) _amenities.add("ClubHouse");
    if(widget.realEstate.data.haspowerbackup) _amenities.add("PowerBackup");
    if(widget.realEstate.data.haslift) _amenities.add("Lift");


    }



  }
  @override
  void initState() {
    _initFiledValue();
    super.initState();
  }

  bool _validateTitleBody() {
    bool vaild = true;
    if (!_title.isValid) vaild = false;
    if (!_description.isValid) vaild = false;
    return vaild;
  }

  @override
  Widget build(BuildContext context) {
    _productBloc = BlocProvider.of<ProductOwnerBloc>(context);
    Application(context);
    return WillPopScope(
      onWillPop: () async {
        setState(() {
          if (_isRegistering) {
            _isRegistering = false;
          } else {
            if (_pageIndex == 0) {
              Navigator.pop(context);
            }
            if (_pageIndex > 1) {
              _pageIndex--;
            } else {
              _pageIndex = 0;
            }
          }
        });
        return false;
      },
      child: BlocListener<ProductOwnerBloc, ProductOwnerState>(
        listener: (context, state) {
          if (state is AddNewPropertyState)
            state.failure.fold(() {
              if (state.isLoading) {
                EasyLoading.show(status: 'Loading..');
              } else if (state.message.isNotEmpty) {
                EasyLoading.showInfo(state.message);
              } else {
                EasyLoading.dismiss();
              }
            }, (a) {
              EasyLoading.dismiss();

              showDialog(
                  context: context,
                  builder: (context) => ErrorDialogue(failure: a));
            });
        },
        child: Scaffold(
          key: _key,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: ColorConstants.primaryColor,
            leading: GestureDetector(
              onTap: () {
                setState(() {
                  if (_isRegistering) {
                    _isRegistering = false;
                  } else {
                    if (_pageIndex == 0) {
                      Navigator.pop(context);
                    }
                    if (_pageIndex > 1) {
                      _pageIndex--;
                    } else {
                      _pageIndex = 0;
                    }
                  }
                });
              },
              child: Icon(
                Icons.arrow_back,
              ),
            ),
            title: Text("Add Property"),
            actions: [
              if (_amenities.length > 0)
                GestureDetector(
                  onTap: () {
                    if (!_isRegistering)
                      setState(() {
                        _isRegistering = true;
                      });
                    else
                      _registerClick();
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: ColorConstants.primaryColor),
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      _isRegistering ? 'Register' : 'Save',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Merriweather',
                      ),
                    ),
                  ),
                ),
            ],
          ),
          body: ScreenWithLoader(
            isLoading: _isLoading,
            body: SingleChildScrollView(
              controller: _scrollController,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                padding: const EdgeInsets.all(20),
                child: Stack(
                  children: [
                    _index0(),
                    if (_pageIndex > 0) _index1(),
                    if (_isRegistering) _confirmRegistration()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _index0() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CustomSlidetransition(
          duration: 1000,
          dx: -2,
          child: Text(
            "Let's start by knowing you better",
            style: Styles.semiBoldText(size: 18),
          ),
        ),
        SizedBox(height: 20),
        CustomSlidetransition(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'I am ...',
              style: Styles.semiBoldText(size: 16),
            ),
          ),
        ),
        CustomSlidetransition(
          dy: 2,
          dx: 0,
          duration: 800,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            width: MediaQuery.of(context).size.width / 2,
            child: CupertinoSlidingSegmentedControl<int>(
              backgroundColor: ColorConstants.primaryColor,
              groupValue: currentSegment,
              children: {
                0: SegmentTab(
                  text: 'Broker',
                  isSelected: currentSegment == 0,
                ),
                1: SegmentTab(
                  text: 'Owner',
                  isSelected: currentSegment == 1,
                ),
              },
              onValueChanged: (index) {
                setState(() {
                  currentSegment = index;
                });
              },
            ),
          ),
        ),
        SizedBox(height: 20),
        CustomSlidetransition(
          dy: 2,
          dx: 0,
          duration: 900,
          child: SingleChildScrollView(
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      CustomTextField(
                        icon: Icons.title,
                        title: "Title",
                        controller: _title,
                        initialValue: widget.realEstate?.data?.title,
                        validate: Validate.withOption(
                          isRequired: true,
                        ),
                        onChange: (v) => setState(() {}),
                      ),
                      CustomTextField(
                        icon: Icons.text_fields_outlined,
                        title: "Description",
                        controller: _description,
                        initialValue: widget.realEstate?.data?.description,
                        validate: Validate.withOption(
                          isRequired: true,
                        ),
                        onChange: (v) => setState(() {}),
                      ),
                    ],
                  ))),
        ),
        SizedBox(height: 20),
        CustomSlidetransition(
          dx: -2,
          duration: 1100,
          child: CustomButton(
            text: "Let's Go",
            borderColor: ColorConstants.primaryColor,
            onTap: () {
              if (_validateTitleBody()) {
                Utility.hideKeyboard();
                _scrollController.jumpTo(0);
                setState(() {
                  _pageIndex++;
                  _score = 10;
                });
              }
            },
          ),
        ),
        SizedBox(height: 30)
      ],
    );
  }

  Widget _index1() {
    return CustomSlidetransition(
      duration: 400,
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top,
        width: double.infinity,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Propery Details ($_progress%)',
                  style: Styles.normalText(),
                ),
                SizedBox(height: 20),
                Stack(
                  children: [
                    Container(
                      width: 55,
                      height: 5,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.21),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    Container(
                      width: 2.0 * _score,
                      height: 5,
                      decoration: BoxDecoration(
                          color: ColorConstants.primaryColor,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            if (_pageIndex == 1) _index2(),
            if (_pageIndex == 2 && _serviceType != "PG") _index3(),
            if (_pageIndex == 3) _index4(),
            if (_pageIndex == 4) _index5(),
            if (_pageIndex == 5 &&
                (_serviceType == 'Sale' || _serviceType == 'Rent') &&
                (_furnishingStatus == '' ||
                    _saleType == '' ||
                    _contructionType == '' ||
                    _ownershipStatus == ''))
              _index6a(),
            if (_pageIndex == 5 &&
                (_serviceType == 'Sale' || _serviceType == 'Rent') &&
                (_bedRooms == 0 || _bathRooms == 0 || _sqFeet == 0) &&
                (_furnishingStatus != '' &&
                    _saleType != '' &&
                    _contructionType != '' &&
                    _ownershipStatus != ''))
              _index6b(),
            if (_pageIndex == 5 &&
                ((_serviceType != 'Sale' && _serviceType != 'Rent') ||
                    (_bedRooms != 0 &&
                        _bathRooms != 0 &&
                        _furnishingStatus != '')))
              _index6(),
            if (_pageIndex == 6 && _serviceType == "PG") _index7a(),
            if (_pageIndex == 6 && (_serviceType != "PG" || _tenants != ''))
              _index7b(),
          ],
        )),
      ),
    );
  }

  Widget _confirmRegistration() {
    return CustomSlidetransition(
      duration: 400,
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    alignment: Alignment.centerLeft,
                    child: Text(widget.contactDetail.address.addressline ==null?"":widget.contactDetail.address.addressline,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Merriweather',
                            color: Colors.black.withOpacity(0.8))),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Icon(Icons.location_on, size: 2),
                          Text(
                            '${widget.contactDetail.address.area_sector}, ${widget.contactDetail.address.town_village}, ${widget.contactDetail.address.district}, ${widget.contactDetail.address.state}',
                            style: TextStyle(
                              fontFamily: 'Merriweather',
                              color: Colors.black.withOpacity(0.8),
                            ),
                            maxLines: 5,
                          ),
                        ],
                      )),
                  SizedBox(height: 20),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 1),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(9),
                                    topRight: Radius.circular(9),
                                  )),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Icon(Icons.home_sharp),
                                  SizedBox(width: 10),
                                  Text('Description',
                                      style: TextStyle(
                                          fontFamily: 'Merriweather',
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Colors.black.withOpacity(0.8))),
                                ],
                              )),
                          SizedBox(height: 20),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.centerLeft,
                            child: Text(_description.text,
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    color: Colors.black.withOpacity(0.8))),
                          ),
                          SizedBox(height: 10),
                        ],
                      )),
                  SizedBox(height: 20),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 1),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(9),
                                    topRight: Radius.circular(9),
                                  )),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Icon(Icons.home_sharp),
                                  SizedBox(width: 2),
                                  Text('Interior Features',
                                      style: TextStyle(
                                          fontFamily: 'Merriweather',
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Colors.black.withOpacity(0.8))),
                                ],
                              )),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.centerLeft,
                            child: Text('Beds & Baths',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.8))),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.centerLeft,
                            child: Text(
                                '??? Number of Bedrooms: ${_bedRooms.toString()}',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    color: Colors.black.withOpacity(0.8))),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.centerLeft,
                            child: Text(
                                '??? Number of Bathrooms: ${_bathRooms.toString()}',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    color: Colors.black.withOpacity(0.8))),
                          ),
                          SizedBox(height: 10),
                          Container(
                              color: Colors.grey.withOpacity(0.5),
                              width: double.infinity,
                              height: 1),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.centerLeft,
                            child: Text('Dimensions and Layout',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.8))),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.centerLeft,
                            child: Text(
                                '??? Living Area: ${_sqFeet.toString()} Square Feet',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    color: Colors.black.withOpacity(0.8))),
                          ),
                          SizedBox(height: 10),
                        ],
                      )),
                  SizedBox(height: 20),
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 1),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(9),
                                    topRight: Radius.circular(9),
                                  )),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Icon(Icons.apartment),
                                  SizedBox(width: 10),
                                  Text('Amenities',
                                      style: TextStyle(
                                          fontFamily: 'Merriweather',
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Colors.black.withOpacity(0.8))),
                                ],
                              )),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.centerLeft,
                            child: Text('Parking & Allotments',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.8))),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.centerLeft,
                            child: Text(
                                '??? Parking: ${_amenities.contains("Parking") ? 'Available' : 'Not Available'}',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    color: Colors.black.withOpacity(0.8))),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.centerLeft,
                            child: Text(
                                '??? Green Area: ${_amenities.contains("GreenArea") ? 'Available' : 'Not Available'}',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    color: Colors.black.withOpacity(0.8))),
                          ),
                          SizedBox(height: 10),
                          Container(
                              color: Colors.grey.withOpacity(0.5),
                              width: double.infinity,
                              height: 1),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.centerLeft,
                            child: Text('Services',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.8))),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.centerLeft,
                            child: Text(
                                '??? Security: ${_amenities.contains("Security") ? 'Available' : 'Not Available'}',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    color: Colors.black.withOpacity(0.8))),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.centerLeft,
                            child: Text(
                                '??? Water: 24x7 ${_amenities.contains("24xWater") ? 'Available' : 'Not Available'}',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    color: Colors.black.withOpacity(0.8))),
                          ),
                          SizedBox(height: 10),
                        ],
                      )),
                  SizedBox(height: 20),
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(9),
                                    topRight: Radius.circular(9),
                                  )),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Icon(Icons.apartment),
                                  SizedBox(width: 10),
                                  Text('Property Details',
                                      style: TextStyle(
                                          fontFamily: 'Merriweather',
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Colors.black.withOpacity(0.8))),
                                ],
                              )),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.centerLeft,
                            child: Text('Type',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.8))),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.centerLeft,
                            child: Text('??? Residential',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    color: Colors.black.withOpacity(0.8))),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.centerLeft,
                            child: Text('??? Construction: Old',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    color: Colors.black.withOpacity(0.8))),
                          ),
                          SizedBox(height: 10),
                          Container(
                              color: Colors.grey.withOpacity(0.5),
                              width: double.infinity,
                              height: 1),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.centerLeft,
                            child: Text('Services',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.8))),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.centerLeft,
                            child: Text('??? Security: 24 x 7',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    color: Colors.black.withOpacity(0.8))),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.centerLeft,
                            child: Text('??? Water: 24 x 7',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    color: Colors.black.withOpacity(0.8))),
                          ),
                          SizedBox(height: 10),
                        ],
                      )),
                  SizedBox(height: 20),
                  CustomButton(
                    text: "Register",
                    borderColor: ColorConstants.primaryColor,
                    onTap: () {
                      _scrollController.jumpTo(0);
                      _registerClick();
                    },
                  ),
                ],
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }

  Widget _index2() {
    return CustomSlidetransition(
      duration: 1000,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSlidetransition(
              duration: 1000,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'What type of Propery is it for?',
                  style: Styles.normalText(),
                ),
              ),
            ),
            SizedBox(height: 50),
            ServiceType(
                onSelect: (serviceType) => setState(() {
                      _progress = 20;
                      _score = 15;
                      _serviceType = serviceType;
                    }),initialvalue: widget.realEstate?.data?.servicetype),
            SizedBox(height: 20),
            _propertyType1(),
            _propertyType2()
          ],
        ),
      ),
    );
  }

  Widget _index3() {
    return CustomSlidetransition(
      duration: 1000,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSlidetransition(
              duration: 1000,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'What type of $_propertyType is it?',
                  style: Styles.normalText(),
                ),
              ),
            ),
            SizedBox(height: 20),
            _category1(),
            _category2(),
            _category3(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _index4() {
    return CustomSlidetransition(
      duration: 1000,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSlidetransition(
              duration: 1000,
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text('What will be pricing?',
                      style: Styles.normalText())),
            ),
            CustomTextField(
              icon: Icons.attach_money_rounded,
              title: "Pricing",
              initialValue: widget.realEstate?.data?.price.toString(),
              controller: _price,
              // initialValue: widget.realEstate?.data?.price,
              validate: Validate.withOption(
                isRequired: true,
                isNumber: true,
                isInt: true,
              ),
              onChange: (v) => setState(() {}),
            ),
            if (_serviceType == "PG" || _serviceType == "Sale")
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(
                    icon: Icons.attach_money_rounded,
                    title: "Discount",
                    controller: _discountController,
                    initialValue:
                        widget.realEstate?.data?.discountstartdate?.toString(),
                    validate: Validate.withOption(
                      isRequired: true,
                      isInt: true,
                      isNumber: true,
                    ),
                    onChange: (v) => setState(() {}),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                          child: Text('Discount Start Date : ',
                              style: Styles.normalText())),
                      if (_discountStartDate != null)
                        Row(
                          children: [
                            Text(
                                DateFormat('dd MMM').format(_discountStartDate),
                                style: Styles.normalText()),
                            SizedBox(width: 10)
                          ],
                        ),
                      GestureDetector(
                          onTap: () async {
                            _discountStartDate = await showDatePicker(
                                context: context,
                                initialDate:
                                    _discountStartDate ?? DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate:
                                    DateTime.now().add(Duration(days: 180)));
                            setState(() {});
                          },
                          child: Icon(Icons.calendar_today,
                              color: ColorConstants.primaryColor))
                    ],
                  ),
                  SizedBox(height: 20),
                  if (_discountStartDate != null)
                    Row(
                      children: [
                        Container(
                            child: Text('Discount End Date : ',
                                style: Styles.normalText())),
                        if (_discountEndDate != null)
                          Row(
                            children: [
                              Text(
                                  DateFormat('dd MMM').format(_discountEndDate),
                                  style: Styles.normalText()),
                              SizedBox(width: 3)
                            ],
                          ),
                        GestureDetector(
                            onTap: () async {
                              _discountEndDate = await showDatePicker(
                                  context: context,
                                  initialDate:
                                      _discountEndDate ?? DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate:
                                      DateTime.now().add(Duration(days: 180)));
                              setState(() {});
                            },
                            child: Icon(Icons.calendar_today,
                                color: ColorConstants.primaryColor))
                      ],
                    ),
                  SizedBox(height: 30)
                ],
              ),
            CustomButton(
              text: "Let's Go",
              borderColor: ColorConstants.primaryColor,
              onTap: () {
                FocusScope.of(context).unfocus();
                setState(() {
                  _pageIndex = 4;
                  _score = 30;
                  _progress = 35;
                });
              },
            ),
            SizedBox(height: 45),
          ],
        ),
      ),
    );
  }

  Widget _index5() {
    return CustomSlidetransition(
      duration: 1000,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSlidetransition(
              duration: 1000,
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text('Showcase Something Best!',
                      style: Styles.normalText())),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                GestureDetector(
                  onTap: () async {
                    try {
                      var pickedFile = await FilePicker.platform
                          .pickFiles(type: FileType.image);
                      if (pickedFile != null && pickedFile.files != null) {
                        setState(() {
                          _isLoading = true;
                        });
                        var image = await _channelsProvider.sendFile(
                            "Images", pickedFile?.files?.first?.path);
                        if (image != null) {
                          _photos.add(image);
                        }
                        setState(() {
                          _isLoading = false;
                        });
                      }
                    } catch (error) {
                      print(error);
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.65)),
                    padding: EdgeInsets.all(20),
                    child: Icon(Icons.add),
                  ),
                ),
                SizedBox(width: 10),
                if (_photos.length > 0)
                  Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width - 150,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          _photos.length,
                          (index) => Container(
                            height: 65,
                            width: 65,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(_photos[index]))),
                          ),
                        ),
                      ),
                    ),
                  )
              ],
            ),
            SizedBox(height: 30),
            if (_photos.length > 0)
              CustomButton(
                text: "Let's Go",
                borderColor: ColorConstants.primaryColor,
                onTap: () {
                  setState(() {
                    _pageIndex = 5;
                    _score = 40;
                    _progress = 45;
                  });
                },
              ),
            SizedBox(height: 45),
          ],
        ),
      ),
    );
  }

  Widget _index6b() {
    return CustomSlidetransition(
      duration: 1000,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.centerLeft,
                child: Text('How Many Bedrooms your $_categoryType is Having?',
                    style: Styles.normalText())),
            SizedBox(height: 20),
            Container(
                alignment: Alignment.center,
                child: Text(
                  _bedRooms == 0
                      ? '1'
                      : _bedRooms == 7
                          ? '6+'
                          : _bedRooms.toString(),
                  style: Styles.normalText(),
                )),
            Slider(
                label: _bedRooms.toString(),
                min: 1,
                max: 7,
                divisions: 6,
                value: _bedRooms.toDouble() < 1 ? 1 : _bedRooms.toDouble(),
                onChanged: (v) => setState(() {
                      _bedRooms = v.round();
                    })),
            SizedBox(height: 20),
            Container(
                alignment: Alignment.centerLeft,
                child: Text('How Many Bathrooms your $_categoryType is Having?',
                    style: Styles.normalText())),
            SizedBox(height: 20),
            Container(
                alignment: Alignment.center,
                child: Text(
                  _bathRooms == 0
                      ? '1'
                      : _bathRooms == 7
                          ? '6+'
                          : _bathRooms.toString(),
                  style: Styles.normalText(),
                )),
            Slider(
                label: _bathRooms.toString(),
                min: 1,
                max: 7,
                divisions: 6,
                value: _bathRooms.toDouble() < 1 ? 1 : _bathRooms.toDouble(),
                onChanged: (v) => setState(() {
                      _bathRooms = v.round();
                    })),
            Container(
                alignment: Alignment.centerLeft,
                child: Text('How Many Sq Feet $_categoryType is Having?',
                    style: Styles.normalText())),
            SizedBox(height: 20),
            Container(
                alignment: Alignment.center,
                child: Text(
                  _sqFeet == 0
                      ? '250 sq. ft.'
                      : _sqFeet == 2500
                          ? '2500+'
                          : _sqFeet.toString() + '  sq. ft.',
                  style: Styles.normalText(),
                )),
            Slider(
                label: _sqFeet.toString(),
                min: 250,
                max: 2500,
                value: _sqFeet.toDouble() < 250 ? 250 : _sqFeet.toDouble(),
                onChanged: (v) => setState(() {
                      _sqFeet = v.round();
                    })),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _index6a() {
    return CustomSlidetransition(
      duration: 1000,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.centerLeft,
                child: Text('Choose Furnishing status of your $_categoryType',
                    style: Styles.normalText())),
            SizedBox(height: 10),
            SelectionButton(
                selectedType: _furnishingStatus,
                title: 'Furnished',
                onSelected: (v) => setState(() {
                      _furnishingStatus = 'Furnished';
                    })),
            SelectionButton(
                selectedType: _furnishingStatus,
                title: 'Semi-furnished',
                onSelected: (v) => setState(() {
                      _furnishingStatus = 'Semi-furnished';
                    })),
            SelectionButton(
                selectedType: _furnishingStatus,
                title: 'Unfurnished',
                onSelected: (v) => setState(() {
                      _furnishingStatus = 'Unfurnished';
                    })),
            SizedBox(height: 20),
            Container(
                alignment: Alignment.centerLeft,
                child: Text('Choose Sale Type of your $_categoryType',
                    style: Styles.normalText())),
            SizedBox(height: 10),
            SelectionButton(
                selectedType: _saleType,
                title: 'New',
                onSelected: (v) => setState(() {
                      _saleType = v;
                    })),
            SelectionButton(
                selectedType: _saleType,
                title: 'Resale',
                onSelected: (v) => setState(() {
                      _saleType = v;
                    })),
            SizedBox(height: 20),
            Container(
                alignment: Alignment.centerLeft,
                child: Text('Choose Construction status of your $_categoryType',
                    style: Styles.normalText())),
            SizedBox(height: 10),
            SelectionButton(
                selectedType: _contructionType,
                title: 'Underconstruction',
                onSelected: (v) => setState(() {
                      _contructionType = v;
                    })),
            SelectionButton(
                selectedType: _contructionType,
                title: 'Ready to move',
                onSelected: (v) => setState(() {
                      _contructionType = v;
                    })),
            SizedBox(height: 20),
            Container(
                alignment: Alignment.centerLeft,
                child: Text('Choose Ownership status of your $_categoryType',
                    style: Styles.normalText())),
            SizedBox(height: 10),
            SelectionButton(
                selectedType: _ownershipStatus,
                title: 'FreeHold',
                onSelected: (v) => setState(() {
                      _ownershipStatus = v;
                    })),
            SelectionButton(
                selectedType: _ownershipStatus,
                title: 'LeaseHold',
                onSelected: (v) => setState(() {
                      _ownershipStatus = v;
                    })),
            SelectionButton(
                selectedType: _ownershipStatus,
                title: 'Co-op',
                onSelected: (v) => setState(() {
                      _ownershipStatus = v;
                    })),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _index6() {
    return CustomSlidetransition(
      duration: 1000,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSlidetransition(
              duration: 1000,
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text('What side your $_categoryType is facing?',
                      style: Styles.normalText())),
            ),
            SizedBox(height: 20),
            SelectionButton(
                title: 'North',
                selectedType: _facingSide,
                onSelected: (v) => _selectFacing(v)),
            SelectionButton(
                title: 'North-East',
                selectedType: _facingSide,
                onSelected: (v) => _selectFacing(v)),
            SelectionButton(
                title: 'North-West',
                selectedType: _facingSide,
                onSelected: (v) => _selectFacing(v)),
            SelectionButton(
                title: 'South',
                selectedType: _facingSide,
                onSelected: (v) => _selectFacing(v)),
            SelectionButton(
                title: 'South-East',
                selectedType: _facingSide,
                onSelected: (v) => _selectFacing(v)),
            SelectionButton(
                title: 'South-West',
                selectedType: _facingSide,
                onSelected: (v) => _selectFacing(v)),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void _selectFacing(String facing) {
    setState(() {
      _facingSide = facing;
      _pageIndex = 6;
      _score = 45;
      _progress = 65;
    });
  }

  Widget _index7a() {
    return CustomSlidetransition(
      duration: 1000,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSlidetransition(
              duration: 1000,
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text('Preffrered Tenants for Your $_serviceType?',
                      style: Styles.normalText())),
            ),
            SizedBox(height: 20),
            SelectionButton(
                title: 'Boys',
                selectedType: _facingSide,
                onSelected: (v) => _selectTenants(v)),
            SelectionButton(
                title: 'Girls',
                selectedType: _facingSide,
                onSelected: (v) => _selectTenants(v)),
            SelectionButton(
                title: 'Boys/Girls',
                selectedType: _facingSide,
                onSelected: (v) => _selectTenants(v)),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  void _selectTenants(String tenants) {
    setState(() {
      _tenants = tenants;
    });
  }

  Widget _index7b() {
    return CustomSlidetransition(
      duration: 1000,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSlidetransition(
              duration: 1000,
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      'What type of amenities your $_categoryType is having?',
                      style: Styles.normalText())),
            ),
            SizedBox(height: 20),
            SelectionButton(
                title: 'PowerBackup',
                selectedType: _amenities,
                onSelected: (v) => _selectAmenities(v)),
            SelectionButton(
                title: 'ClubHouse',
                selectedType: _amenities,
                onSelected: (v) => _selectAmenities(v)),
            SelectionButton(
                title: 'Security',
                selectedType: _amenities,
                onSelected: (v) => _selectAmenities(v)),
            SelectionButton(
                title: '24xWater',
                selectedType: _amenities,
                onSelected: (v) => _selectAmenities(v)),
            SelectionButton(
                title: 'GasPipeLine',
                selectedType: _amenities,
                onSelected: (v) => _selectAmenities(v)),
            if (_serviceType == "Sale" || _serviceType == 'Rent')
              SelectionButton(
                  title: 'Parking',
                  selectedType: _amenities,
                  onSelected: (v) => _selectAmenities(v)),
            if (_serviceType == "Sale" || _serviceType == 'Rent')
              SelectionButton(
                  title: 'Lift',
                  selectedType: _amenities,
                  onSelected: (v) => _selectAmenities(v)),
            if (_serviceType == "Sale" || _serviceType == 'Rent')
              SelectionButton(
                  title: 'GreenArea',
                  selectedType: _amenities,
                  onSelected: (v) => _selectAmenities(v)),
            if (_serviceType != 'Sale')
              SelectionButton(
                  title: 'Internet/Wifi',
                  selectedType: _amenities,
                  onSelected: (v) => _selectAmenities(v)),
            if (_serviceType != 'Sale')
              SelectionButton(
                  title: 'AirConditioner',
                  selectedType: _amenities,
                  onSelected: (v) => _selectAmenities(v)),
            if (_serviceType != 'Sale')
              SelectionButton(
                  title: 'Cooler',
                  selectedType: _amenities,
                  onSelected: (v) => _selectAmenities(v)),
            if (_serviceType != 'Sale')
              SelectionButton(
                  title: 'Fridge',
                  selectedType: _amenities,
                  onSelected: (v) => _selectAmenities(v)),
            if (_serviceType != 'Sale')
              SelectionButton(
                  title: 'TV',
                  selectedType: _amenities,
                  onSelected: (v) => _selectAmenities(v)),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void _selectAmenities(String amenity) {
    setState(() {
      if (!_amenities.contains(amenity)) {
        _amenities.add(amenity);
      } else {
        _amenities.removeWhere((element) => element == amenity);
      }
    });
  }

  Widget _propertyType1() {
    return _serviceType == 'Sale' || _serviceType == "Rent"
        ? Column(
            children: [
              PropertyType(
                  title: 'Residential',
                  selectedType: _propertyType,
                  onSelected: (propertyType) => setState(() {
                        _propertyType = propertyType;
                        _progress = 30;
                        _score = 22;
                        _pageIndex++;
                      })),
              PropertyType(
                  title: 'Commercial',
                  selectedType: _propertyType,
                  onSelected: (propertyType) => setState(() {
                        _propertyType = propertyType;
                        _progress = 30;
                        _score = 22;
                        _pageIndex++;
                      })),
              PropertyType(
                  title: 'Other',
                  selectedType: _propertyType,
                  onSelected: (propertyType) => setState(() {
                        _propertyType = propertyType;
                        _progress = 30;
                        _score = 22;
                        _pageIndex++;
                      }))
            ],
          )
        : SizedBox.shrink();
  }

  Widget _propertyType2() {
    return _serviceType == 'PG'
        ? Column(
            children: [
              PropertyType(
                  title: 'Flat',
                  selectedType: _propertyType,
                  onSelected: (categoryType) => setState(() {
                        _categoryType = categoryType;
                        _progress = 30;
                        _score = 22;
                        _pageIndex = 3;
                      })),
              PropertyType(
                  title: 'House',
                  selectedType: _propertyType,
                  onSelected: (categoryType) => setState(() {
                        _categoryType = categoryType;
                        _progress = 30;
                        _score = 22;
                        _pageIndex = 3;
                      })),
            ],
          )
        : SizedBox.shrink();
  }

  Widget _category1() {
    return _propertyType == "Residential"
        ? Column(
            children: [
              PropertyType(
                  title: 'Flat',
                  selectedType: _categoryType,
                  onSelected: (categoryType) => setState(() {
                        _categoryType = categoryType;
                        _progress = 40;
                        _score = 30;
                        _pageIndex = 3;
                      })),
              PropertyType(
                  title: 'House',
                  selectedType: _categoryType,
                  onSelected: (categoryType) => setState(() {
                        _categoryType = categoryType;
                        _progress = 40;
                        _score = 30;
                        _pageIndex = 3;
                      })),
              PropertyType(
                  title: 'Plot/Land',
                  selectedType: _categoryType,
                  onSelected: (categoryType) => setState(() {
                        _categoryType = categoryType;
                        _progress = 40;
                        _score = 30;
                        _pageIndex = 3;
                      })),
            ],
          )
        : SizedBox.shrink();
  }

  Widget _category2() {
    return _propertyType == "Commercial"
        ? Container(
            child: Column(
              children: [
                PropertyType(
                    title: 'Office Space',
                    selectedType: _categoryType,
                    onSelected: (categoryType) => setState(() {
                          _categoryType = categoryType;
                          _progress = 40;
                          _score = 30;
                          //  _pageIndex++;
                        })),
                PropertyType(
                    title: 'Shop / Showroom',
                    selectedType: _categoryType,
                    onSelected: (categoryType) => setState(() {
                          _categoryType = categoryType;
                          _progress = 40;
                          _score = 30;
                          //  _pageIndex++;
                        })),
                PropertyType(
                    title: 'Warehouse',
                    selectedType: _categoryType,
                    onSelected: (categoryType) => setState(() {
                          _categoryType = categoryType;
                          _progress = 40;
                          _score = 30;
                          //  _pageIndex++;
                        })),
                PropertyType(
                    title: 'Industrial Building',
                    selectedType: _categoryType,
                    onSelected: (categoryType) => setState(() {
                          _categoryType = categoryType;
                          _progress = 40;
                          _score = 30;
                          //  _pageIndex++;
                        })),
                PropertyType(
                    title: 'Industrial Shed',
                    selectedType: _categoryType,
                    onSelected: (categoryType) => setState(() {
                          _categoryType = categoryType;
                          _progress = 40;
                          _score = 30;
                          //  _pageIndex++;
                        })),
                PropertyType(
                    title: 'Commercial Land',
                    selectedType: _categoryType,
                    onSelected: (categoryType) => setState(() {
                          _categoryType = categoryType;
                          _progress = 40;
                          _score = 30;
                          //  _pageIndex++;
                        })),
              ],
            ),
          )
        : SizedBox.shrink();
  }

  Widget _category3() {
    return _propertyType == "Other"
        ? Column(
            children: [
              PropertyType(
                  title: 'Flat',
                  selectedType: _categoryType,
                  onSelected: (categoryType) => setState(() {
                        _categoryType = categoryType;
                        _progress = 40;
                        _score = 30;
                        //  _pageIndex++;
                      })),
              PropertyType(
                  title: 'House',
                  selectedType: _categoryType,
                  onSelected: (categoryType) => setState(() {
                        _categoryType = categoryType;
                        _progress = 40;
                        _score = 30;
                        //  _pageIndex++;
                      })),
              PropertyType(
                  title: 'Plot/Land',
                  selectedType: _categoryType,
                  onSelected: (categoryType) => setState(() {
                        _categoryType = categoryType;
                        _progress = 40;
                        _score = 30;
                        //  _pageIndex++;
                      })),
            ],
          )
        : SizedBox.shrink();
  }

  void _registerClick() {
    CompleteRealEstate newRealEstate;

    if (widget.realEstate != null) {
      newRealEstate = widget.realEstate.copyWith(
          docId: '',
          dt: 'realestate',
          serviceId: '',
          userId: UserSession.userId,
          data: widget.realEstate.data.copyWith(
            title: _title.text.trim(),
            description: _description.text.trim(),
            contactdetails: widget.contactDetail,
            usagetype: _propertyType,
            propertytype: _categoryType,
            servicetype: _serviceType,
            saletype: _saleType,
            ownershiptype: _ownershipStatus,
            price: int.parse(_price.text.trim()),
            furnishedstatus: _furnishingStatus,
            constructionstatus: _contructionType,
            numrooms: _bedRooms,
            numbath: _bathRooms,
            sqfeetarea: _sqFeet,
            listingownertype: currentSegment == 0 ? "Broker" : "Owner",
            has24hrwater: _amenities.contains("24xWater"),
            hastv: _amenities.contains("TV"),
            hasfridge: _amenities.contains("Fridge"),
            hascooler: _amenities.contains("Cooler"),
            hasairconditioner: _amenities.contains("AirConditioner"),
            hasinternet: _amenities.contains("Internet/Wifi"),
            hasgreenarea: _amenities.contains("GreenArea"),
            hasparking: _amenities.contains("Parking"),
            hasgaspipeline: _amenities.contains("GasPipeLine"),
            hassecurity: _amenities.contains("Security"),
            hasclubhouse: _amenities.contains("ClubHouse"),
            haspowerbackup: _amenities.contains("PowerBackup"),
            haslift: _amenities.contains("Lift"),
            imagelist: _photos,
          ));

      _productBloc.add(
        ProductOwnerEvent.update(productdata: newRealEstate.data.toJson(),type:"realestate",entitytype: widget.entitytype,entityid:widget.entityid,isservice:widget.isService,origin:widget.origin),
      );
    } else {
      newRealEstate = CompleteRealEstate(
          docId: '',
          dt: 'realestate',
          serviceId: '',
          userId: UserSession.userId,
          data: RealEstateModel(
            title: _title.text.trim(),
            description: _description.text.trim(),
            contactdetails: widget.contactDetail,
            usagetype: _propertyType,
            propertytype: _categoryType,
            servicetype: _serviceType,
            saletype: _saleType,
            ownershiptype: _ownershipStatus,
            price: int.parse(_price.text.trim()),
            furnishedstatus: _furnishingStatus,
            constructionstatus: _contructionType,
            numrooms: _bedRooms,
            numbath: _bathRooms,
            serviceproviderid: widget.entityid,
            sqfeetarea: _sqFeet,
            listingownertype: currentSegment == 0 ? "Broker" : "Owner",
            has24hrwater: _amenities.contains("24xWater"),
            hastv: _amenities.contains("TV"),
            hasfridge: _amenities.contains("Fridge"),
            hascooler: _amenities.contains("Cooler"),
            hasairconditioner: _amenities.contains("AirConditioner"),
            hasinternet: _amenities.contains("Internet/Wifi"),
            hasgreenarea: _amenities.contains("GreenArea"),
            hasparking: _amenities.contains("Parking"),
            hasgaspipeline: _amenities.contains("GasPipeLine"),
            hassecurity: _amenities.contains("Security"),
            hasclubhouse: _amenities.contains("ClubHouse"),
            haspowerbackup: _amenities.contains("PowerBackup"),
            haslift: _amenities.contains("Lift"),
            imagelist: _photos,
          ));

      _productBloc.add(
        ProductOwnerEvent.add(productdata: newRealEstate.data.toJson(),type:"realestate",entitytype: widget.entitytype,entityid:widget.entityid,isservice:widget.isService,origin:widget.origin),
      );
    }
  }
}
