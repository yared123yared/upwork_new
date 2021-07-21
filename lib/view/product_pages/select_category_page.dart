import 'package:complex/data/providers/product_provider_old.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/common/widgets/tap_widget.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:flutter/material.dart';
import 'package:injector/injector.dart';

class SelectCategoryPage extends StatefulWidget {
  final String documentname;
  final String serviceProviderId;

  SelectCategoryPage({this.documentname, this.serviceProviderId});

  @override
  _SelectCategoryPageState createState() => _SelectCategoryPageState();
}

class _SelectCategoryPageState extends State<SelectCategoryPage> {
  var _productProvider = Injector.appInstance.get<ProductProviderOld>();
  List<String> _showList = [];
  var _isLoading = true;

  @override
  void initState() {
    super.initState();
    _productProvider
        .getCategory(
            levelName: widget.serviceProviderId != null
                ? "PRODUCTCATEGORYINFO/${widget.documentname}" //"SERVICEPROVIDERINFO/${widget.serviceProviderId}/PRODUCTCATEGORYINFO/${widget.documentname}"
                : "PRODUCTCATEGORYINFO/${widget.documentname}")
        .then((result) {
      if (result != null) {
        List<String> _data = result['data'].cast<String>();
        _showList.addAll(_data);
      } else {
        Navigator.pop(context, widget.documentname);
      }
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print(widget.serviceProviderId != null
        ? "SERVICEPROVIDERINFO/${widget.serviceProviderId}/PRODUCTCATEGORYINFO/${widget.documentname}"
        : "PRODUCTCATEGORYINFO/${widget.documentname}");
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Category'),
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
        body: _renderList(),
      ),
    );
  }

  Widget _renderList() {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TapWidget(
          onTap: () {
            setState(() {
              _isLoading = true;
            });
            _productProvider
                .getCategory(
                    levelName: widget.serviceProviderId != null
                        ? "SERVICEPROVIDERINFO/${widget.serviceProviderId}/PRODUCTCATEGORYINFO/${_showList[index]}"
                        : "PRODUCTCATEGORYINFO/${_showList[index]}")
                .then((result) {
              if (result != null) {
                List<String> _data = result['data'].cast<String>();
                _showList.clear();
                _showList.addAll(_data);
              } else {
                Navigator.pop(context, _showList[index]);
              }
              setState(() {
                _isLoading = false;
              });
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_showList[index].split("->").last),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          thickness: 1.2,
          color: ColorConstants.primaryColor,
        );
      },
      itemCount: _showList.length,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
    );
  }
}
