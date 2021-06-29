import 'package:flutter/material.dart';

class ListStateClass {
  final String title;
  final String subtitle;
  final VoidCallback tapAction;
  final VoidCallback deleteAction;
  final VoidCallback editAction;
  final CustomAction customAction_1;
  final CustomAction customAction_2;
  final String iconpath;
  final String info1;
  final String info2;
  final int info1color;
  final int info2color;
  final String textforsearch;

  ListStateClass(
      {@required this.title,
      this.subtitle,
      this.tapAction,
      this.customAction_1,
      this.customAction_2,
      this.deleteAction,
      this.editAction,
      this.iconpath,
      this.info1,
      this.info2,
      this.info1color,
      this.info2color,
      this.textforsearch});

  ListStateClass copyWith({
    VoidCallback tapAction,
    VoidCallback deleteAction,
    CustomAction customAction_1,
    CustomAction customAction_2,
    VoidCallback editAction,
  }) {
    return ListStateClass(
        tapAction: tapAction ?? this.tapAction,
        deleteAction: deleteAction ?? this.deleteAction,
        editAction: editAction ?? this.editAction,
        customAction_1: customAction_1 ?? this.customAction_1,
        customAction_2: customAction_2 ?? this.customAction_2,
        subtitle: this.subtitle,
        title: this.title,
        textforsearch: textforsearch);
  }
}

class CustomAction {
  final String title;
  final VoidCallback action;

  CustomAction({@required this.title, this.action}) : assert(title != null);
}
