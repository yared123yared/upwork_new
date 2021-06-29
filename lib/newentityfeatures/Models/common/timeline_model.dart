class TimeLineModel {
  String text;
  bool isChecked;

  TimeLineModel({this.isChecked, this.text});

  TimeLineModel copyWith({String text, bool isChecked}) {
    return TimeLineModel(
      text: text ?? this.text,
      isChecked: isChecked ?? this.isChecked,
    );
  }
}
