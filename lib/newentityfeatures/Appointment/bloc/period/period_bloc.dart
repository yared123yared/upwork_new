import 'dart:async';
import 'package:bloc/bloc.dart';
import 'period_event.dart';

class PeriodBloc extends Bloc<PeriodEvent, String> {
  PeriodBloc(String initialState) : super(initialState);

  String period = '';
  String tempPeriod = '';

  String get initialState => period;

  @override
  Stream<String> mapEventToState(PeriodEvent event) async* {
    if (event is AddPeriod) {
      yield tempPeriod;
      period = event.period;
      yield period;
    } else if (event is DeletePeriod) {
      yield tempPeriod;
      period = '';
      yield period;
    }
  }
}
