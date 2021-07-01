import 'package:carousel_slider/carousel_controller.dart';
import 'package:complex/blocs/bloc_manager.dart';
import 'package:complex/blocs/product_bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/response/product_models/pet_model.dart';
import 'package:complex/common/widgets/group_title.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/common/widgets/slider.dart';
import 'package:complex/common/widgets/slider_list.dart';
import 'package:complex/pages/product_pages/share_widget.dart';
import 'package:complex/utils/log_print.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PetsDetailPage extends StatefulWidget {
  final String docId;

  PetsDetailPage({@required this.docId});

  @override
  State<StatefulWidget> createState() {
    return _PetsDetailPageState();
  }
}

class _PetsDetailPageState extends State<PetsDetailPage> {
  CarouselController buttonCarouselController = CarouselController();
  int _sliderSelectedIndex = 0;
  ProductBloc _productBloc;
  bool _isLoading = false;
  var _key = GlobalKey<ScaffoldState>();
  PetModel _model;

  void _handleProductDetailResponse(GetProductDetailState state) {
    switch (state.apiState) {
      case ApiStatus.LOADING:
        _isLoading = true;
        break;
      case ApiStatus.SUCCESS:
        _isLoading = false;
        if (state.response.data != null) {
          LogPrint(state.response.data['adata']);
          _model = PetModel.fromJson(state.response.data['adata']);
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
                title: Text('Pet Details'),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                backgroundColor: ColorConstants.greenColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
              ),
              body: ScreenWithLoader(
                isLoading: _isLoading,
                body: _model == null
                    ? Container()
                    : SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SliderWidget(
                              buttonCarouselController:
                                  buttonCarouselController,
                              items: _model.imagelist,
                              onPageChange: (page) {
                                setState(() {
                                  _sliderSelectedIndex = page;
                                });
                              },
                            ),
                            SliderListWidget(
                              items: _model.imagelist,
                              selectedItem: _sliderSelectedIndex,
                              onTap: (page) {
                                buttonCarouselController.jumpToPage(page);
                              },
                            ),
                            _renderDescription(),
                            _renderMainInfo(),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0, left: 20, bottom: 20),
                              child: Text(
                                "\$ ${_model.price?.toString() ?? ""}",
                                style: Styles.semiBoldText(
                                    color: ColorConstants.primaryColor,
                                    size: 16),
                              ),
                            ),
                            GroupTitle(
                              text: 'Personal Detail',
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
      padding: const EdgeInsets.all(20.0),
      child: Text(
        _model.description ?? "",
        style: Styles.semiBoldText(size: 16),
      ),
    );
  }

  Widget _renderMainInfo() {
    return Column(
      children: [
        _renderMainInfoRow(_model.petname ?? ""),
        _renderMainInfoRow(_model.age?.toString() ?? ""),
        _renderMainInfoRow(_model.gender ?? "")
      ],
    );
  }

  Widget _renderMainInfoRow(String text) {
    Widget _menuIcon() {
      return Image.asset(
        'assets/group.png',
        height: 18,
        width: 18,
      );
    }

    Widget _name() {
      return Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          text,
          style: Styles.semiBoldText(size: 16),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: Row(children: [_menuIcon(), _name()]),
    );
  }

  Widget itemBuilder(String name, String desc,
      {Alignment alignment = Alignment.centerRight}) {
    Widget _renderName() {
      return Padding(
        padding: EdgeInsets.fromLTRB(30, 15, 0, 15),
        child: Text(
          name,
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
              style:
                  TextStyle(fontSize: 17, color: ColorConstants.darkBlackColor),
            ),
          )
        ],
      );
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _renderName(),
            _renderDesc(),
          ],
        ),
        Container(height: 1, width: double.infinity, color: Colors.black)
      ],
    );
  }

  Widget _renderPersonalInfo() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
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
            return itemBuilder('Email', "${_model.contactdetails.email}",
                alignment: Alignment.centerLeft);
          }

          if (index == 2) {
            return itemBuilder('Phone', "${_model.contactdetails.phonenum}",
                alignment: Alignment.centerLeft);
          }

          return Container();
        },
      ),
    );
  }
}
