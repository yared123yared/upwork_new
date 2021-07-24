import 'package:complex/utils/resource/colors.dart';
import 'package:flutter/material.dart';

import '../../data/data.dart';
import '../models.dart';

export '../model/dynamic_list_state_class.dart';

class CommonListTile extends StatefulWidget {
  final ListStateClass listState;

  CommonListTile({
    @required this.listState,
  });

  @override
  _CommonListTileState createState() => _CommonListTileState();
}

class _CommonListTileState extends State<CommonListTile> {
  bool showDeleteButton = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      // color: Colors.white,
      elevation: 3,
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(vertical: height, horizontal: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(width * 4),
      ),
      child: InkWell(
        onTap: !showDeleteButton
            ? widget.listState.tapAction
            : () {
                setState(() => showDeleteButton = false);
              },
        onLongPress: () {
          if (widget.listState.deleteAction != null ||
              widget.listState.editAction != null) {
            setState(() {
              showDeleteButton
                  ? showDeleteButton = false
                  : showDeleteButton = true;
            });
          }
        },
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: height * 1.5, horizontal: width * 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (widget.listState.formName == "building")
                CircleAvatar(
                  radius: 30,
                  foregroundImage:
                      AssetImage('assets/listViewIcons/Buildingicon.png'),
                )
              else if (widget.listState.iconpath != null)
                CircleAvatar(
                  radius: 30,
                  foregroundImage: AssetImage(
                    widget.listState.iconpath,
                  ),
                ),
              if (widget.listState.formName == null)
                Icon(
                  Icons.account_balance,
                  size: width * 10,
                  color: green,
                ),
              SizedBox(width: width * 2),
              if (!showDeleteButton)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 1.0, left: 8),
                        child: Container(
                          height: 28,
                          //todo convert this to scrollable text
                          child: Text(
                            widget.listState.title ?? "Error",
                            style: TextStyle(
                              fontFamily: 'Merriweather',
                              color: ColorConstants.primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      if (widget.listState.tittleH1 != null)
                        Padding(
                          padding: const EdgeInsets.only(left: 8, bottom: 4),
                          child: Text(
                            widget.listState.tittleH1 ?? "Error",
                            style: TextStyle(
                              fontFamily: 'Merriweather',
                              color: ColorConstants.primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      if (widget.listState.tittleH2 != null)
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            widget.listState.tittleH2 ?? "Error",
                            style: TextStyle(
                              fontFamily: 'Merriweather',
                              color: ColorConstants.primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      if (!showDeleteButton &&
                              widget.listState.subtitle != null ||
                          widget.listState.customAction_1 != null ||
                          widget.listState.customAction_2 != null)
                        SizedBox(
                          height: height * 4,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            children: [
                              if (widget.listState.subtitle != null &&
                                  widget.listState.subtitle.isNotEmpty)
                                Container(
                                  padding: EdgeInsets.all(width),
                                  child: Center(
                                    child: Text(
                                      widget.listState.subtitle,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontFamily: 'Merriweather',
                                          color: C.white,
                                          fontSize: width * 3.5,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: C.primaryTextBlue.withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              if (widget.listState.customAction_1 != null)
                                InkWell(
                                  onTap: widget.listState.customAction_1.action,
                                  child: Container(
                                    margin: EdgeInsets.only(left: width * 2),
                                    padding: EdgeInsets.all(width),
                                    child: Center(
                                      child: Text(
                                        widget.listState.customAction_1.title,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'Merriweather',
                                            color: C.primaryTextBlue,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: C.secondaryTextBlue)),
                                  ),
                                ),
                              if (widget.listState.customAction_2 != null)
                                InkWell(
                                  onTap: widget.listState.customAction_2.action,
                                  child: Container(
                                    margin: EdgeInsets.only(left: width * 2),
                                    padding: EdgeInsets.all(width),
                                    child: Center(
                                      child: Text(
                                        widget.listState.customAction_2.title,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'Merriweather',
                                            color: C.primaryTextBlue,
                                            fontSize: width * 3.5,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: C.secondaryTextBlue)),
                                  ),
                                ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              if (showDeleteButton)
                Container(
                  width: width * 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      widget.listState.editAction != null
                          ? GestureDetector(
                              onTap: widget.listState.editAction,
                              child: Container(
                                padding: EdgeInsets.all(width * 2),
                                child: Text(
                                  'Edit',
                                  style: TextStyle(
                                      fontFamily: 'Merriweather',
                                      color: C.multiColor_4,
                                      fontSize: width * 4.5,
                                      fontWeight: FontWeight.w700),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white24,
                                  border: Border.all(color: C.multiColor_4),
                                  borderRadius:
                                      BorderRadius.circular(width * 2),
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                setState(() {
                                  showDeleteButton = false;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(width * 2),
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                      fontFamily: 'Merriweather',
                                      color: C.multiColor_4,
                                      fontSize: width * 4.5,
                                      fontWeight: FontWeight.w700),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white24,
                                  border: Border.all(color: C.multiColor_4),
                                  borderRadius:
                                      BorderRadius.circular(width * 2),
                                ),
                              ),
                            ),
                      if (widget.listState.deleteAction != null)
                        GestureDetector(
                          onTap: widget.listState.deleteAction,
                          child: Container(
                            padding: EdgeInsets.all(width * 2),
                            child: Text(
                              'Delete',
                              style: TextStyle(
                                  fontFamily: 'Merriweather',
                                  color: C.red,
                                  fontSize: width * 4.5,
                                  fontWeight: FontWeight.w700),
                            ),
                            decoration: BoxDecoration(
                              color: C.red.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              if (widget.listState.trailingTitle != null && !showDeleteButton)
                Container(
                  width: widget.listState.trailingTitle.length > 15 ? 90 : 70,
                  decoration: BoxDecoration(
                    // color: Color.fromRGBO(39, 122, 150, 0),
                    color: widget.listState.trailingBgColor != null
                        ? widget.listState.trailingBgColor
                        : ColorConstants.primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 16.0),
                    child: Text(
                      widget.listState.trailingTitle,
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              // Icon(
              //   Icons.more_vert,
              //   color: Colors.white,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
