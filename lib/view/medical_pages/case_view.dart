import 'package:complex/common/presentation.dart';
import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:flutter/material.dart';

class CaseView extends StatelessWidget {
  const CaseView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CustomTextFieldController _itemController = CustomTextFieldController();
    ;
    return Scaffold(
      floatingActionButton: CustomButton(
        text: "Save",
        buttonColor: green,
        width: 380,
        borderColor: Colors.white,
        onTap: () {},
      ),
      appBar: CustomAppBar(
        title: "Case View",
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                    height: 60,
                    width: 120,
                    child: CustomButton(
                        borderColor: green, text: "Add", onTap: () {})),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), //color of shadow
                      spreadRadius: 5, //spread radius
                      blurRadius: 7, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),

                    //you can set more BoxShadow() here
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            height: 70,
                            width: 150,
                            child: CustomTextField(
                              title: "First Visit",
                              controller: _itemController,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            height: 70,
                            width: 150,
                            child: CustomTextField(
                              title: "Last Visit",
                              controller: _itemController,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: 70,
                        child: CustomTextField(
                          title: "Doctor",
                          controller: _itemController,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
