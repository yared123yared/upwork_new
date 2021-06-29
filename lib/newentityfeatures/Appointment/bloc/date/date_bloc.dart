import 'dart:async';
import 'package:bloc/bloc.dart';
import 'date_event.dart';

class DateBloc extends Bloc<DateEvent, List<dynamic>> {
  DateBloc(List<dynamic> initialState) : super(initialState);

  List<String> list = new List<String>();
  List<String> tempList = new List<String>();

  List<String> get initialState => list;

  @override
  Stream<List<String>> mapEventToState(DateEvent event) async* {
    if (event is AddDate) {
      yield tempList;
      list.add(event.newDate);
      print(list);
      yield list;
    } else if (event is DeleteDate) {
      yield tempList;
      list.removeWhere((element) => element.toString() == event.date);
      print(list);
      yield list;
    } else if (event is NullifyDate) {
      yield tempList;
      list.clear();
      yield list;
    }
  }
}
