import 'package:complex/utils/resource/colors.dart';
import 'package:flutter/material.dart';

class ProductMainPage extends StatefulWidget {
  ProductMainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProductMainPageState createState() => _ProductMainPageState();
}

class _ProductMainPageState extends State<ProductMainPage> {
  List<String> _formList = [
    '1...Contact Details --- yes -- no---',
    '2...----  Generic Properties -----',
    '3...-----  Generic Properties with unit ------',
    '4...----- Package Detail -----',
    '5...-----  Size and Color Detail View -----',
    '6...Package List View',
    '7... Size And Color List View'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(itemCount: 7, itemBuilder: _itemBuilder));
  }

  Widget _itemBuilder(context, index) {
    return InkWell(
        child: Container(
          height: 100,
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: ColorConstants.greenColor,
              border:
                  Border(bottom: BorderSide(color: Colors.black, width: 1))),
          child: Text(_formList[index],
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
        onTap: () {
          if (index == 0) {
            // Navigator.push(context, NextPageRoute(GeneralContactDetailPage()));
          }
          if (index == 1) {
            //
          }
          if (index == 2) {
            // Navigator.push(context,NextPageRoute(GenericProperties(false)));
          }
          if (index == 3) {
            // Navigator.push(context, NextPageRoute(PackageDetailView()));
          }
          if (index == 4) {
            // Navigator.push(context, NextPageRoute(SizeAndColorDetailView()));
          }
          if (index == 5) {
            // Navigator.push(context, NextPageRoute(PackageListView()));
          }
          if (index == 6) {
            // Navigator.push(context, NextPageRoute(SizeAndColorListView()));
          }
        });
  }
}
