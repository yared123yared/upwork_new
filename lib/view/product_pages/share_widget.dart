import 'package:complex/utils/resource/colors.dart';
import 'package:flutter/material.dart';

class ShareWidget extends StatefulWidget {
  ShareWidget({this.onTap});

  final Function(int) onTap;

  @override
  State<StatefulWidget> createState() {
    return _ShareWidgetState();
  }
}

class _ShareWidgetState extends State<ShareWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        margin: EdgeInsets.symmetric(vertical: 20),
        child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              if (index == 0) {
                return _item(ShareItem.phone);
              }
              if (index == 1) {
                return _item(ShareItem.email);
              }
              if (index == 2) {
                return _item(ShareItem.messanger);
              }

              return Container();
            }));
  }

  Widget _item(ShareItem shareItem) {
    return InkWell(
        onTap: () {
          if (widget.onTap != null) {
            widget.onTap(shareItem.index);
          }
        },
        child: Container(
          height: 40,
          width: (MediaQuery.of(context).size.width - 80) / 3,
          decoration: BoxDecoration(
              color: shareItem.color(),
              borderRadius: BorderRadius.circular(20)),
          margin: EdgeInsets.only(right: 20),
          child: Center(
              child: Image.asset(
            shareItem.asset(),
          )),
        ));
  }
}

extension ShareItemAddition on ShareItem {
  Color color() {
    switch (this) {
      case ShareItem.phone:
        return ColorConstants.blue;

        break;
      case ShareItem.email:
        return ColorConstants.greenColor;

        break;
      case ShareItem.messanger:
        return Colors.pinkAccent;

        break;
      default:
        return Colors.black;
    }
  }

  String asset() {
    switch (this) {
      case ShareItem.phone:
        return './assets/phone_icon.png';

        break;
      case ShareItem.email:
        return './assets/email_icon.png';

        break;
      case ShareItem.messanger:
        return './assets/messanger_icon.png';

        break;
      default:
        return './assets/phone_icon.png';
    }
  }
}

enum ShareItem { phone, email, messanger }
