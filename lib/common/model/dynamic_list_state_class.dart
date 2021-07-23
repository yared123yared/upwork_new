import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ListStateClass extends Equatable {
  final String title;
  final String tittleH1;
  final String tittleH2;
  final String tittleH3;

  final String subtitle;
  final String formName;
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

  final String trailingTitle;
  final Color trailingBgColor;

  ListStateClass(
      {@required this.title,
      this.tittleH1,
      this.tittleH2,
      this.tittleH3,
      this.subtitle,
      this.formName,
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
      this.textforsearch,
      this.trailingTitle,
      this.trailingBgColor});

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

  @override
  List<Object> get props =>
      [title, subtitle, iconpath, info1, info2, info1color, info2color];
}

class CustomAction extends Equatable {
  final String title;
  final VoidCallback action;
  CustomAction({@required this.title, this.action}) : assert(title != null);
  @override
  List<Object> get props => [title, action];
}
