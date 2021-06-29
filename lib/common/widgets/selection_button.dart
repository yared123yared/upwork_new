import 'package:complex/common/widgets/custom_slide_transition.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:flutter/material.dart';

class SelectionButton extends StatelessWidget {
  final String title;
  final dynamic selectedType;
  final Function(String) onSelected;

  SelectionButton({this.selectedType, this.title = '', this.onSelected});

  @override
  Widget build(BuildContext context) {
    bool isTrue = false;
    if (selectedType is String) {
      if (selectedType == title) {
        isTrue = true;
      }
    } else if (selectedType is List<String>) {
      if (selectedType.contains(title)) {
        isTrue = true;
      }
    }
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
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
              color: isTrue
                  ? ColorConstants.primaryColor.withOpacity(0.65)
                  : Colors.grey.withOpacity(0.05),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: isTrue
                      ? ColorConstants.primaryColor
                      : Colors.grey.withOpacity(0.75))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: isTrue ? Colors.white : null,
                  fontFamily: 'Merriweather',
                  fontWeight: isTrue ? FontWeight.bold : null,
                ),
              ),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  color: isTrue
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
