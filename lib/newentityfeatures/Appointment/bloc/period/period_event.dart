abstract class PeriodEvent {}

class AddPeriod extends PeriodEvent {
  final String period;

  AddPeriod(this.period);
}

class DeletePeriod extends PeriodEvent {}
