//Flutter Imports
import 'package:complex/common/widgets/animations/custom_slide_transition.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/data/styles_colors.dart';
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
          margin: EdgeInsets.only(bottom: height * 3),
          padding: EdgeInsets.symmetric(
              horizontal: width * 5, vertical: height * 1.5),
          decoration: BoxDecoration(
              color: isTrue
                  ? C.primaryGradientBlue.withOpacity(0.65)
                  : Colors.grey.withOpacity(0.05),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: isTrue
                      ? C.primaryGradientBlue
                      : Colors.grey.withOpacity(0.75))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: isTrue ? C.white : null,
                    fontFamily: 'Merriweather',
                    fontWeight: isTrue ? FontWeight.bold : null),
              ),
              Container(
                height: height * 5,
                width: height * 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    color: isTrue
                        ? C.primaryGradientBlue.withOpacity(0.8)
                        : Colors.grey.withOpacity(0.25)),
                child: isTrue ? Icon(Icons.done, color: C.white) : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
