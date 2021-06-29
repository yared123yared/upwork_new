import 'package:complex/utils/resource/colors.dart';
import 'package:flutter/material.dart';

class SliderListWidget extends StatefulWidget {
  SliderListWidget({@required this.items, this.selectedItem = 0, this.onTap});

  final int selectedItem;
  final List<String> items;
  final Function(int) onTap;

  @override
  State<StatefulWidget> createState() {
    return _SliderListWidgetState();
  }
}

class _SliderListWidgetState extends State<SliderListWidget> {
  double get _sliderListWidth => (MediaQuery.of(context).size.width - 100) / 4;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        itemCount: widget.items.length,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == 3 && widget.items.length > 4) {
            return Container(
              height: 60,
              width: _sliderListWidth,
              margin: EdgeInsets.only(
                left: 20,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: ColorConstants.darkBlackColor.withOpacity(0.2)),
              child: Center(
                child: Text('+${widget.items.length - 3}',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: ColorConstants.darkBlackColor.withOpacity(0.6))),
              ),
            );
          }
          return InkWell(
            onTap: () {
              if (widget.onTap != null) {
                widget.onTap(index);
              }
            },
            child: Container(
              height: 60,
              width: _sliderListWidth,
              margin: EdgeInsets.only(
                left: index == 0 ? 0 : 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                border: Border.all(
                    width: 4,
                    color: widget.selectedItem == index
                        ? ColorConstants.greenColor
                        : Colors.transparent),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  widget.items[index],
                  fit: BoxFit.fill,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
