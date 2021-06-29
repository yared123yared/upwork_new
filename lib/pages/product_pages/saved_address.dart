import 'package:complex/common/widgets/textfield_widget.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:flutter/material.dart';

class SavedAddress extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SavedAddressState();
  }
}

class _SavedAddressState extends State<SavedAddress> {

  List<AddressModel> _addresses = [
    AddressModel(
      addressLine1: 'Address Line 1',
      district: 'Address Distinct',
      state: 'Address State',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: 300,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _addresses.length,
                itemBuilder: (context, index) {
                  return _itemModel(_addresses[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _itemModel(AddressModel addressModel) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(children: [
          TextFieldWidget(
            hintText: addressModel.addressLine1,
            onChanged: (value) {},
          ),
          Row(
            children: [
              Flexible(
                child: TextFieldWidget(
                  hintText: addressModel.district,
                  onChanged: (value) {},
                ),
              ),
              Flexible(
                child: TextFieldWidget(
                  hintText: addressModel.state,
                  onChanged: (value) {},
                ),
              )
            ],
          )
        ]));
  }
}

class AddressModel {
  String addressLine1;
  String district;
  String state;

  AddressModel({this.addressLine1, this.district, this.state});
}
