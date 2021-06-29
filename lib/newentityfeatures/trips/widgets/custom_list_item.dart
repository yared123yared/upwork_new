import 'package:flutter/material.dart';

import '../../../data/screen_size.dart';
import '../../../data/styles_colors.dart';

/// A widget that is used to display the main points in creating routes.
class CustomListItem extends StatelessWidget {
  final String title;
  final void Function() editAction;
  final void Function() removeAction;
  final bool isReorderable;
  const CustomListItem({
    Key key,
    @required this.title,
    @required this.isReorderable,
    @required this.editAction,
    @required this.removeAction,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: width * 54,
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: tileTitle.copyWith(fontSize: 18),
                ),
              ),
              Spacer(),
              InkWell(
                child: Icon(Icons.edit),
                onTap: editAction,
              ),
              const SizedBox(width: 20),
              InkWell(
                child: Icon(Icons.close),
                onTap: removeAction,
              ),
              if (isReorderable) const SizedBox(width: 30),
              if (isReorderable)
                Icon(
                  Icons.menu,
                  size: 25,
                )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            height: 3,
            color: Colors.black87,
          )
        ],
      ),
    );
  }
}
