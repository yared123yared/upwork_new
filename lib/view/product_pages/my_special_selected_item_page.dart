import 'package:complex/application/explore/ecom/lucenesuggestion/lucenesuggestion_bloc.dart';
import 'package:complex/application/explore/ecom/product_owner/product_owner_bloc.dart';
import 'package:complex/blocs/bloc_manager.dart';
import 'package:complex/common/widgets/alerts_widget.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/common/widgets/tap_widget.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';
import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:complex/utils/next_page_routing.dart';

import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/resource/images.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:complex/view/widget/error_dialogue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class MySpecialSelectedItemPage extends StatefulWidget {
  final ProductModel model;
  final String entitytype;
  final String entityid;
  final bool isupdate;

  MySpecialSelectedItemPage({this.model,this.entitytype,this.entityid,this.isupdate});

  @override
  _MySpecialSelectedItemPageState createState() =>
      _MySpecialSelectedItemPageState();
}

List<CustomPackageModel> _customSelect = [];

class _MySpecialSelectedItemPageState extends State<MySpecialSelectedItemPage> {
  bool _isLoading = false;
  var _key = GlobalKey<ScaffoldState>();
  ProductOwnerBloc _productBloc;

  @override
  Widget build(BuildContext context) {
    _productBloc = BlocProvider.of<ProductOwnerBloc>(context);
    return BlocListener<ProductOwnerBloc, ProductOwnerState>(
      listener: (context, state) {
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
      child: BlocBuilder<ProductOwnerBloc, ProductOwnerState>(
        builder: (context,state){
          return Scaffold(
            key: _key,
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
              actions: [
                TapWidget(
                  onTap: () {
                    if (_customSelect.length == 0) {
                      EasyLoading.showInfo("Please add some products");
                      return;
                    }else{

                     // widget.model.custompackagedata = _customSelect;
                      //_productBloc.add(AddCustomPackageEvent(userId: UserSession.userId,model: widget.model));

                      ProductModel _model2 =  widget.model.copyWith(custompackagedata :_customSelect);
                      if(widget.isupdate) {
                        _productBloc.add(
                            ProductOwnerEvent.update(productdata: _model2.toJson(),
                                entitytype: widget.entitytype,
                                entityid: widget.entityid,
                                isservice: false,
                                origin: 1,
                                type: "PRODUCT")
                        );
                      }
                      else
                      {
                        _productBloc.add(
                            ProductOwnerEvent.add(productdata: _model2.toJson(),
                                entitytype: widget.entitytype,
                                entityid: widget.entityid,
                                isservice: false,
                                origin: 1,
                                type: "PRODUCT")
                        );

                      }
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Save My Special Product",
                      style: Styles.semiBoldText(size: 16, color: Colors.white),
                    ),
                  ),
                )
              ],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              backgroundColor: ColorConstants.greenColor,
            ),
            body: ScreenWithLoader(
              isLoading: _isLoading,
              body: _renderWidget(),
            ),
          );
        },
      ),
    );
  }

  _renderWidget() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 9,
            child: ListView.builder(
              padding: const EdgeInsets.all(20.0),
              itemCount: _customSelect.length,
              itemBuilder: (context, index) {
                return Card(
                  color: ColorConstants.primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 20),
                    child: Text(
                      _customSelect[index].title,
                      style: Styles.semiBoldText(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomButton(
                onTap: () {
                  Navigator.push(context, NextPageRoute(SearchProductWidget())).then((value){
                    if(value == 1)setState((){});
                  });
                },
                text: "Add Product",
                borderColor: ColorConstants.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchProductWidget extends StatefulWidget {

  final bool isservice ;
  final String entitytype;
  final String entityid;

  SearchProductWidget({this.isservice,this.entitytype,this.entityid});
  @override
  _SearchProductWidgetState createState() => _SearchProductWidgetState();
}

class _SearchProductWidgetState extends State<SearchProductWidget> {
  bool _isLoading = false;
  var _key = GlobalKey<ScaffoldState>();
  LuceneSuggestionDataBloc _luceneBloc = new LuceneSuggestionDataBloc();
  List<LuceneSearchSuggestionData> _suggetions = [];

  void _handleProductDetailResponse(LuceneSuggestionDataState state) {
    switch (state.curstatus) {
      case ObjectStateStatus.LOADING:
        _isLoading = true;
        break;
      case ObjectStateStatus.SUCCESS:
        _isLoading = false;
        if (state.suggestiondata != null) {
          _suggetions.clear();
          _suggetions.addAll(state.suggestiondata);
        }
        break;
      case ObjectStateStatus.ERROR:
        _isLoading = false;
        EasyLoading.showError(state.error);
        break;
      case ObjectStateStatus.INITIAL:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _luceneBloc,
      child:  BlocListener<LuceneSuggestionDataBloc, LuceneSuggestionDataState>(
        listener: (context, state) {
        if (state is LuceneSuggestionDataState)
        _handleProductDetailResponse(state);
        },
        child: BlocBuilder<LuceneSuggestionDataBloc, LuceneSuggestionDataState>(
          builder: (context, state) {
            return Scaffold(
              key: _key,
              appBar: AppBar(
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                title: TextField(
                  style: Styles.normalText(color: Colors.white),
                  onChanged: (text) {
                    if (text.isNotEmpty && text.length >10)
                      _luceneBloc.add(GetLuceneSuggestionDataEvent(txtsearch:text,entitytype:widget.entitytype,entityid:widget.entityid,isservice:widget.isservice,offset:0));


                  },
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: "Search product here",
                      hintStyle:
                      Styles.lightText(color: Colors.white, size: 18)),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
                backgroundColor: ColorConstants.greenColor,
              ),
              body: ScreenWithLoader(
                isLoading: _isLoading,
                body: _renderWidget(),
              ),
            );
          },
        ),
    ));


  }


  _renderWidget() {
    return ListView.builder(
      itemCount: _suggetions.length,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 15),
      itemBuilder: (context, index) {
        return _sugItem(_suggetions[index]);
      },
    );
  }

  _sugItem(LuceneSearchSuggestionData suggetion) {
    return TapWidget(
      onTap: () {
        AlertsWidget.alertWithEnterUnit(
          context: context,
          text: "Please enter the unit for this product",
          onOkClick: (value) {
            if(value !=null){
              _customSelect.add(CustomPackageModel(
                title: suggetion.text,
                image1: suggetion.tileimage,
                productid: suggetion.pid,
                unit: int.parse(value)
              ));
            }
            Navigator.pop(context,1);
          },
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: 100,
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: 100,
              alignment: Alignment.center,
              child: suggetion.tileimage == null || suggetion.tileimage.isEmpty
                  ? Image.asset(
                      "assets/image.png",
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: 100,
                    )
                  : Image.network(
                      suggetion.tileimage,
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: 100,
                    ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text(suggetion.text),
              ),
            )
          ],
        ),
      ),
    );
  }
}
