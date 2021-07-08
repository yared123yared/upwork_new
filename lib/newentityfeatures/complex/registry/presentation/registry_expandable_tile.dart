import 'package:complex/newentityfeatures/Models/registry_model.dart';
import 'package:flutter/material.dart';

class RegistryExpandableTile extends StatefulWidget {
  final RegistryModel registryModel;
  RegistryExpandableTile({Key key, @required this.registryModel})
      : super(key: key);

  @override
  _RegistryExpandableTileState createState() => _RegistryExpandableTileState();
}

class _RegistryExpandableTileState extends State<RegistryExpandableTile> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ExpansionPanelList(
        animationDuration: Duration(milliseconds: 300),
        dividerColor: Colors.red,
        elevation: 2,
        children: [
          ExpansionPanel(
            body: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "OwnerName: ${widget.registryModel.ownerName}, Contact Number: ${widget.registryModel.ownerPublishedContact}",
                    style: TextStyle(
                        fontSize: 15, letterSpacing: 0.3, height: 1.3),
                  ),
                  Text(
                    "Resident name: ${widget.registryModel.residentName}, Resident Number: ${widget.registryModel.residentPublishedContact}",
                    style: TextStyle(
                        fontSize: 15, letterSpacing: 0.3, height: 1.3),
                  ),
                ],
              ),
            ),
            headerBuilder: (BuildContext context, bool isExpanded) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "BuildingName: ${widget.registryModel.buildingName}, FloorNum: ${widget.registryModel.floorNum}, UnitAddress: ${widget.registryModel.unitAddress}",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800]),
                ),
              );
            },
            isExpanded: isExpanded,
          )
        ],
        expansionCallback: (int item, bool status) {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
      ),
    );
  }
}
