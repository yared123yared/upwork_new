import 'package:complex/application/explore/ecom/product_owner/product_owner_bloc.dart';
import 'package:complex/blocs/product_bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/common/widgets/alerts_widget.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/custom_dropdown.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';

import 'package:complex/view/product_pages/select_product_type.dart';
import 'package:complex/view/product_pages/size_color_detail_form.dart';
import 'package:complex/utils/next_page_routing.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SizeAndColorListView extends StatefulWidget {
  final ProductType productType;
  final ProductModel model;
  final bool isupdate;
  final String entitytype;
  final String entityid;

  SizeAndColorListView({
    this.productType,
    this.model,this.isupdate,this.entitytype,this.entityid
  });

  @override
  State<StatefulWidget> createState() {
    return _SizeAndColorListViewState();
  }
}



class _SizeAndColorListViewState extends State<SizeAndColorListView> {
  CustomTextFieldController _sizeTypeController = CustomTextFieldController();
  List<String> _sizeTypeItems = ['size_ 1', 'size_2', ' size_3'];
  var _isLoading = false;
  var _key = GlobalKey<ScaffoldState>();
  ProductOwnerBloc _productBloc;
  List<SizeAndColorModel> sizeAndColor ;
  @override
  void initState() {

      if(widget.isupdate)
        {
          sizeAndColor =widget.model.sizeandcolordata;
        }
      else
        {
          sizeAndColor=[];
        }


    super.initState();
  }
  void AddToListActionForProduct({dynamic data,bool apply,int actiontype}) {
    setState(() {

      if(apply)
      {
        SizeAndColorModel pm = data as SizeAndColorModel;
        sizeAndColor.add(pm);
      }


    });
  }
  void _handleAddNoPackageResponse(AddMultiColorState state) {
    switch (state.apiState) {
      case ApiStatus.LOADING:
        _isLoading = true;
        break;
      case ApiStatus.SUCCESS:
        _isLoading = false;
        AlertsWidget.alertWithOkBtn(
          context: context,
          onOkClick: () {
            Navigator.pop(context);
            Navigator.pop(context);
            Navigator.pop(context);
            Navigator.pop(context);
            Navigator.pop(context);
          },
          text: state.response.message,
        );
        break;
      case ApiStatus.ERROR:
        _isLoading = false;
        Utility.showSnackBar(context: context, message: state.message);
        break;
      case ApiStatus.INITIAL:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    _productBloc = BlocProvider.of<ProductOwnerBloc>(context);
    return BlocListener<ProductBloc, ProductState>(
      listener: (context, state) {
        if (state is AddMultiColorState) _handleAddNoPackageResponse(state);
      },
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return Scaffold(
            key: _key,
            appBar: AppBar(
              title: Text('Package'),
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
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
              body: Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    _renderDropDown(
                        'Size Type', _sizeTypeController, _sizeTypeItems),
                    Container(
                      height: 1,
                      color: Colors.black,
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      width: MediaQuery.of(context).size.width,
                    ),
                    _renderAddButton(),
                    _renderForm(),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CustomButton(
                        text: 'SAVE',
                        onTap: () {

                          ProductModel _model2 =  widget.model.copyWith(sizeandcolordata : sizeAndColor);

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

                        },
                        borderColor: ColorConstants.primaryColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _renderDropDown(
      String text, CustomTextFieldController controller, List<String> items) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomDropDownList<String>(
        title: text,
        controller: controller,
        loadData: () async => items,
        displayName: (x) => x,
        validate: Validate.withOption(
          isRequired: true,
        ),
      ),
    );
  }

  Widget _renderAddButton() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 1,
                      color: ColorConstants.greenColor.withOpacity(0.6))),
              height: 36,
              alignment: Alignment.center,
              child: Text(
                'ADD',
                style: TextStyle(
                    fontSize: 15,
                    color: ColorConstants.greenColor,
                    fontWeight: FontWeight.w700),
              ),
            ),
            onTap: () {
              Navigator.push(context, NextPageRoute(SizeAndColorDetailForm()))
                  .then((value) => Utility.waitForMili(500)
                      .then((value) => setState(() {})));
            },
          ),
        ],
      ),
    );
  }

  Widget _renderForm() {
    return Expanded(
      child: ListView.builder(
        itemCount: sizeAndColor.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return cardModel(sizeAndColor[index]);
        },
      ),
    );
  }

  Widget cardModel(SizeAndColorModel sizeAndColor) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Container(
        height: 150,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              child: Container(
                width: 100,
                height: double.infinity,
                color: ColorConstants.darkGreyColor.withOpacity(0.1),
                child: Image.network(
                  sizeAndColor.listimages.first,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child:
                              _renderTextField(sizeAndColor.price.toString()),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(right: 20),
                          child: _renderTextField(sizeAndColor.size.toString()),
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: _renderTextField(
                              sizeAndColor.discountedprice.toString()),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.color_lens,
                        color: ColorConstants.primaryColor,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _renderTextField(
    String text,
  ) {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: Styles.normalText(),
      ),
    );
  }
}
