import 'dart:async';
import 'package:bloc/bloc.dart';

class SliderBloc extends Bloc<SliderEvent, int> {
  SliderBloc(int initialState) : super(initialState);

  int slider = 0;
  int tempSlider = 0;

  int get initialState => slider;

  @override
  Stream<int> mapEventToState(SliderEvent event) async* {
    if (event is MoveSlider) {
      yield tempSlider;
      slider = event.index;
      yield slider;
    }
    if (event is InitialSlider) {
      yield tempSlider;
      slider = 0;
      yield slider;
    }
  }
}

abstract class SliderEvent {}

class MoveSlider extends SliderEvent {
  final int index;

  MoveSlider(this.index);
}

class InitialSlider extends SliderEvent {}
