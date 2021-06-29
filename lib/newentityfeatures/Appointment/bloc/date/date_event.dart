abstract class DateEvent {}

class AddDate extends DateEvent {
  final String newDate;

  AddDate(this.newDate);
}

class DeleteDate extends DateEvent {
  final String date;

  DeleteDate(this.date);
}

class NullifyDate extends DateEvent {}
