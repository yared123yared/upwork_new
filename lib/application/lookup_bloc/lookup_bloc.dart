import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/data/api/failure/failure.dart';
import 'package:complex/domain/lookup/lookup.dart';
import 'package:complex/newentityfeatures/f_lookups/common/repo/i_lookup_provider.dart';
import 'package:complex/newentityfeatures/f_lookups/common/repo/stringlookup/lookup_provider.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lookup_event.dart';
part 'lookup_state.dart';
part 'lookup_bloc.freezed.dart';

class LookupBloc extends Bloc<LookupEvent, LookupState> {
  ILookupProvider provider = LookupProvider();
  LookupBloc() : super(LookupState.initial());

  @override
  Stream<LookupState> mapEventToState(
    LookupEvent event,
  ) async* {
    yield* event.map(
        getListData: (getListData) async* {
          yield state.copyWith(isLoading: true);
          yield await getListData.lookupType.map(feeItem: (v) async {
            Either<Failure, FeeItems> data =
                await provider.getFeeItemsList(serviceID: getListData.entityid);

            return data.fold(
                (l) => state.copyWith(isLoading: false, failure: some(l)),
                (r) => state.copyWith(isLoading: false, listData: r));
          }, offering: (v) async {
            Either<Failure, Offerings> data = await provider.getOfferingsList(
                serviceID: getListData.entityid);

            return data.fold(
                (l) => state.copyWith(isLoading: false, failure: some(l)),
                (r) => state.copyWith(isLoading: false, listData: r));
          }, grade: (v) async {
            Either<Failure, ExamTermInfoList> data =
                await provider.getExamTermList(serviceID: getListData.entityid);

            return data.fold(
                (l) => state.copyWith(isLoading: false, failure: some(l)),
                (r) => state.copyWith(isLoading: false, listData: r));
          }, rooms: (v) async {
            Either<Failure, RoomInfoList> data =
                await provider.getRoomsList(serviceID: getListData.entityid);

            return data.fold(
                (l) => state.copyWith(isLoading: false, failure: some(l)),
                (r) => state.copyWith(isLoading: false, listData: r));
          }, examTerm: (v) async {
            Either<Failure, ExamTermInfoList> data =
                await provider.getExamTermList(serviceID: getListData.entityid);

            return data.fold(
                (l) => state.copyWith(isLoading: false, failure: some(l)),
                (r) => state.copyWith(isLoading: false, listData: r));
          }, sessionTerm: (v) async {
            Either<Failure, SessionTermList> data = await provider
                .getSessionTermList(serviceID: getListData.entityid);

            return data.fold(
                (l) => state.copyWith(isLoading: false, failure: some(l)),
                (r) => state.copyWith(isLoading: false, listData: r));
          }, classPeriod: (v) async {
            Either<Failure, ExamTermInfoList> data =
                await provider.getExamTermList(serviceID: getListData.entityid);

            return data.fold(
                (l) => state.copyWith(isLoading: false, failure: some(l)),
                (r) => state.copyWith(isLoading: false, listData: r));
          }, paymentPeriod: (v) async {
            Either<Failure, ExamTermInfoList> data =
                await provider.getExamTermList(serviceID: getListData.entityid);

            return data.fold(
                (l) => state.copyWith(isLoading: false, failure: some(l)),
                (r) => state.copyWith(isLoading: false, listData: r));
          });
        },
        deleteItemWithData: (v) async* {},
        createItemData: (v) async* {});
  }
}
