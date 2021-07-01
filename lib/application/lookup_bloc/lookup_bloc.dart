import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/data/api/failure/failure.dart';
import 'package:complex/domain/lookup/lookup.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lookup_event.dart';
part 'lookup_state.dart';
part 'lookup_bloc.freezed.dart';

class LookupBloc extends Bloc<LookupEvent, LookupState> {
  LookupBloc() : super(LookupState.initial());

  @override
  Stream<LookupState> mapEventToState(
    LookupEvent event,
  ) async* {
    yield* event.map(
        getListData: (v) async* {},
        deleteItemWithData: (v) async* {},
        createItemData: (v) async* {});
  }
}
