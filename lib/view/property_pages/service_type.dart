import 'package:complex/common/widgets/custom_slide_transition.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:flutter/material.dart';

class ServiceType extends StatefulWidget {
  final Function(String) onSelect;
  final String initialvalue;

  ServiceType({this.onSelect,this.initialvalue});

  @override
  _ServiceTypeState createState() => _ServiceTypeState();
}

class _ServiceTypeState extends State<ServiceType> {
  String _type = '';

  void setIntialValue(context)
  {
    if(widget.initialvalue !=null ) {
      _type = widget.initialvalue;
      if (widget.onSelect != null) {
        widget.onSelect(_type);
      }
    }
  }

  @override
  void initState() {

    WidgetsBinding.instance
        .addPostFrameCallback((_) => setIntialValue(context));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _typeButton('Sale', 1),
        _typeButton('Rent', 2),
        _typeButton('PG', 3),
      ],
    );
  }

  Widget _typeButton(String title, int index) {
    return CustomSlidetransition(
      duration: 1500,
      child: GestureDetector(
        onTap: () => setState(() {
          _type = title;
          if (widget.onSelect != null) {
            widget.onSelect(title);
          }
        }),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(
                color: _type == title
                    ? ColorConstants.primaryColor
                    : Colors.grey.withOpacity(0.3)),
            color: _type == title
                ? ColorConstants.primaryColor.withOpacity(0.11)
                : Colors.grey.withOpacity(0.05),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            title,
            style: Styles.normalText(),
          ),
        ),
      ),
    );
  }
}
