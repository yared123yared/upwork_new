import 'package:complex/common/widgets/custom_slide_transition.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:flutter/material.dart';

class PropertyType extends StatelessWidget {
  final String selectedType, title;
  final Function(String) onSelected;

  PropertyType({this.selectedType = '', this.title = '', this.onSelected});

  @override
  Widget build(BuildContext context) {
    return CustomSlidetransition(
      dy: 2,
      dx: 0,
      duration: 550,
      child: GestureDetector(
        onTap: () {
          if (onSelected != null) {
            onSelected(title);
          }
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
              color: selectedType == title
                  ? ColorConstants.primaryColor.withOpacity(0.65)
                  : Colors.grey.withOpacity(0.05),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: selectedType == title
                      ? ColorConstants.primaryColor
                      : Colors.grey.withOpacity(0.75))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Styles.normalText(),
              ),
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  color: selectedType == title
                      ? ColorConstants.primaryColor.withOpacity(0.8)
                      : Colors.grey.withOpacity(0.25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
