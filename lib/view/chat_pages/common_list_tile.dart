import 'package:complex/data/providers/channel_provider.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:injector/injector.dart';

import 'list_state.dart';

class CommonListTile extends StatefulWidget {
  final ListStateClass listState;
  final bool hasNewMessage;
  final bool isEnabled;

  CommonListTile({
    @required this.listState,
    @required this.hasNewMessage,
    this.isEnabled = false,
  });

  @override
  _CommonListTileState createState() => _CommonListTileState();
}

class _CommonListTileState extends State<CommonListTile> {
  bool showDeleteButton = false;
  ChannelsProvider _channelsProvider =
      Injector.appInstance.get<ChannelsProvider>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        elevation: 3,
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
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
            color: widget.hasNewMessage
                ? ColorConstants.primaryColor.withOpacity(0.3)
                : Colors.white,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.account_balance,
                  color: ColorConstants.secondaryTextBlue,
                ),
                SizedBox(width: 10),
                if (!showDeleteButton)
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          widget.listState.title ?? "Error",
                          style: Styles.semiBoldText(
                              color: ColorConstants.secondaryTextBlue),
                        ),
                        if (!showDeleteButton &&
                                widget.listState.subtitle != null ||
                            widget.listState.customAction_1 != null ||
                            widget.listState.customAction_2 != null)
                          SizedBox(
                            height: 15,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              children: [
                                if (widget.listState.subtitle != null &&
                                    widget.listState.subtitle.isNotEmpty)
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: Center(
                                      child: Text(
                                        widget.listState.subtitle,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'Merriweather',
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: ColorConstants.secondaryTextBlue
                                            .withOpacity(0.8),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                if (widget.listState.customAction_1 != null)
                                  InkWell(
                                    onTap:
                                        widget.listState.customAction_1.action,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 8),
                                      padding: EdgeInsets.all(8),
                                      child: Center(
                                        child: Text(
                                          widget.listState.customAction_1.title,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontFamily: 'Merriweather',
                                              color: ColorConstants
                                                  .secondaryTextBlue,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              color: ColorConstants
                                                  .secondaryTextBlue)),
                                    ),
                                  ),
                                if (widget.listState.customAction_2 != null)
                                  InkWell(
                                    onTap:
                                        widget.listState.customAction_2.action,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 8),
                                      padding: EdgeInsets.all(8),
                                      child: Center(
                                        child: Text(
                                          widget.listState.customAction_2.title,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontFamily: 'Merriweather',
                                              color: ColorConstants
                                                  .secondaryTextBlue,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              color: ColorConstants
                                                  .secondaryTextBlue)),
                                    ),
                                  )
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                if (showDeleteButton)
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          widget.listState.editAction != null
                              ? GestureDetector(
                                  onTap: widget.listState.editAction,
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                      'Edit',
                                      style: TextStyle(
                                          fontFamily: 'Merriweather',
                                          color: ColorConstants.primaryColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white24,
                                      border: Border.all(
                                          color: ColorConstants.primaryColor),
                                      borderRadius: BorderRadius.circular(8),
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
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                      'Cancel',
                                      style: TextStyle(
                                          fontFamily: 'Merriweather',
                                          color: ColorConstants.primaryColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white24,
                                      border: Border.all(
                                          color: ColorConstants.primaryColor),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                          if (widget.listState.deleteAction != null)
                            GestureDetector(
                              onTap: widget.listState.deleteAction,
                              child: Container(
                                padding: EdgeInsets.all(9),
                                child: Text(
                                  widget.isEnabled ? 'Deactivate' : 'Activate',
                                  style: TextStyle(
                                      fontFamily: 'Merriweather',
                                      color: Colors.red,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
