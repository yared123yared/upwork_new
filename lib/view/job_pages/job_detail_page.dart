import 'package:carousel_slider/carousel_controller.dart';
import 'package:complex/blocs/bloc_manager.dart';
import 'package:complex/blocs/product_bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/response/product_models/job_model.dart';
import 'package:complex/common/widgets/group_title.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/common/widgets/slider.dart';
import 'package:complex/common/widgets/slider_list.dart';
import 'package:complex/view/product_pages/share_widget.dart';
import 'package:complex/utils/log_print.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JobDetailPage extends StatefulWidget {
  final String docId;

  JobDetailPage({this.docId});

  @override
  State<StatefulWidget> createState() {
    return _JobDetailPageState();
  }
}

class _JobDetailPageState extends State<JobDetailPage> {
  CarouselController buttonCarouselController = CarouselController();
  int _sliderSelectedIndex = 0;
  JobModel _model;
  var _productBloc;
  bool _isLoading = false;
  var _key = GlobalKey<ScaffoldState>();

  void _handleProductDetailResponse(GetProductDetailState state) {
    switch (state.apiState) {
      case ApiStatus.LOADING:
        _isLoading = true;
        break;
      case ApiStatus.SUCCESS:
        _isLoading = false;
        if (state.response.data != null) {
          LogPrint(state.response.data['adata']);
          _model = JobModel.fromJson(state.response.data['adata']);
        }
        break;
      case ApiStatus.ERROR:
        _isLoading = false;
        Utility.showSnackBar(key: _key, message: state.message);
        break;
      case ApiStatus.INITIAL:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    _productBloc = BlocProvider.of<ProductBloc>(context);
    return BlocManager(
      initState: (context) {
        _productBloc.add(GetProductDetailEvent(docId: widget.docId));
      },
      child: BlocListener<ProductBloc, ProductState>(
        listener: (context, state) {
          if (state is GetProductDetailState)
            _handleProductDetailResponse(state);
        },
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return Scaffold(
              key: _key,
              appBar: AppBar(
                title: Text('Product Details'),
                backgroundColor: ColorConstants.greenColor,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
              ),
              body: ScreenWithLoader(
                isLoading: _isLoading,
                body: SingleChildScrollView(
                  child: Column(
                    children: _model == null
                        ? [Container()]
                        : [
                            _model.companylogo == null ||
                                    _model.companylogo.isEmpty
                                ? Container()
                                : SliderWidget(
                                    buttonCarouselController:
                                        buttonCarouselController,
                                    items: [_model.companylogo],
                                    onPageChange: (page) {
                                      setState(() {
                                        _sliderSelectedIndex = page;
                                      });
                                    },
                                  ),
                            _model.companylogo == null ||
                                    _model.companylogo.isEmpty
                                ? Container()
                                : SliderListWidget(
                                    items: [_model.companylogo],
                                    selectedItem: _sliderSelectedIndex,
                                    onTap: (page) {
                                      buttonCarouselController.jumpToPage(page);
                                    },
                                  ),
                            _renderDescription(),
                            _renderMainInfo(),
                            _renderCompanyName(),
                            GroupTitle(
                              text: 'Salary Range',
                            ),
                            _renderDetails(),
                            SizedBox(
                              height: 20,
                            ),
                            GroupTitle(
                              text: 'Education Qualification',
                            ),
                            _renderEducationDetail(),
                            SizedBox(
                              height: 20,
                            ),
                            GroupTitle(
                              text: 'Personal Detail',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            _renderPersonalInfo(),
                            ShareWidget(),
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

  Widget _renderDescription() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        _model.title ?? "",
        style: TextStyle(
            fontSize: 19,
            color: ColorConstants.black,
            fontWeight: FontWeight.w700),
      ),
    );
  }

  Widget _renderMainInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(20),
          child: Image.asset(
            'assets/group.png',
            height: 18,
            width: 18,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              _model.description ?? "",
              style: TextStyle(fontSize: 17),
            ),
          ),
        )
      ],
    );
  }

  Widget _renderCompanyName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(20),
          child: Image.asset(
            'assets/group.png',
            height: 18,
            width: 18,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              _model.companyname ?? "",
              style: TextStyle(fontSize: 17),
            ),
          ),
        )
      ],
    );
  }

  Widget _renderDetails() {
    return Column(
      children: [
        itemBuilder("Min Value", _model.minsalaryrange?.toString() ?? "-"),
        itemBuilder("Max Value", _model.maxsalaryrange?.toString() ?? "-"),
      ],
    );
  }

  Widget _renderEducationDetail() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
          child: Row(
            children: [
              Text(
                "Fresher Allowed",
                style: TextStyle(
                    fontSize: 17, color: ColorConstants.darkGreyColor),
              ),
              Spacer(),
              Icon(
                _model.arefreshersallowed ?? false
                    ? Icons.radio_button_checked_outlined
                    : Icons.radio_button_off_outlined,
                color: ColorConstants.primaryColor,
              ),
              Text(
                _model.arefreshersallowed ?? false ? "Yes" : "No",
                style: TextStyle(
                    fontSize: 17, color: ColorConstants.darkGreyColor),
              ),
            ],
          ),
        ),
        itemBuilder(
            "Years of Experience", _model.minyearexperience?.toString() ?? "-"),
      ],
    );
  }

  Widget itemBuilder(String name, String desc,
      {Alignment alignment = Alignment.centerRight}) {
    Widget _renderName() {
      return Padding(
        padding: EdgeInsets.fromLTRB(30, 15, 0, 15),
        child: Text(
          name,
          softWrap: true,
          style: TextStyle(fontSize: 17, color: ColorConstants.darkGreyColor),
        ),
      );
    }

    Widget _renderDesc() {
      return Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                width: MediaQuery.of(context).size.width / 2,
                alignment: alignment,
                padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: Text(
                  desc,
                  style: TextStyle(
                      fontSize: 17, color: ColorConstants.darkBlackColor),
                ))
          ]);
    }

    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_renderName(), Expanded(child: _renderDesc())],
      ),
      Container(height: 1, width: double.infinity, color: Colors.black)
    ]);
  }

  Widget _renderPersonalInfo() {
    return Container(
      height: 250,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          if (index == 0) {
            return itemBuilder('Address',
                "${_model.contactdetails.address.addressline}, ${_model.contactdetails.address.areaSector}, ${_model.contactdetails.address.district}, ${_model.contactdetails.address.state}",
                alignment: Alignment.centerLeft);
          }

          if (index == 1) {
            return itemBuilder('Email', _model.contactdetails.email ?? "-",
                alignment: Alignment.centerLeft);
          }

          if (index == 2) {
            return itemBuilder('Phone', _model.contactdetails.phonenum ?? "-",
                alignment: Alignment.centerLeft);
          }

          return Container();
        },
      ),
    );
  }
}

class Vehicle {
  String name;
  String description;

  Vehicle({this.name, this.description});
}
