abstract class CheckInEvent {}

class UpdateCheckInDay extends CheckInEvent {
  final String day;

  UpdateCheckInDay(this.day);
}

class UpdateCheckInPeriod extends CheckInEvent {
  final String period;

  UpdateCheckInPeriod(this.period);
}

class NullifyCheckIn extends CheckInEvent {}
