import 'dart:async';
import 'package:bloc/bloc.dart';
import 'bloc.dart';

class CheckInBloc extends Bloc<CheckInEvent, List<dynamic>> {
  CheckInBloc(List<dynamic> initialState) : super(initialState);

  List<String> list = [];
  List<String> yieldList = [];
  List<String> tempList = [];

  List<String> get initialState => list;

  @override
  Stream<List<String>> mapEventToState(CheckInEvent event) async* {
    if (event is UpdateCheckInDay) {
      yield yieldList;
      if (list.length == 0) {
        list.add(event.day);
        list.add(' ');
      } else {
        tempList.clear();
        tempList.add(list[0]);
        tempList.add(list[1]);
        list.clear();
        list.add(event.day);
        list.add(tempList[1]);
      }
      yield list;
    } else if (event is UpdateCheckInPeriod) {
      yield yieldList;
      if (list.length == 0) {
        list.add(' ');
        list.add(event.period);
      } else {
        tempList.clear();
        tempList.add(list[0]);
        tempList.add(list[1]);
        list.clear();
        list.add(tempList[0]);
        list.add(event.period);
      }
      yield list;
    } else if (event is NullifyCheckIn) {
      yield yieldList;
      list.clear();
      yield list;
    }
  }
}
