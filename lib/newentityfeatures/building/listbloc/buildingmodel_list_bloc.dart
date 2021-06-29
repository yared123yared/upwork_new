import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:complex/newentityfeatures/building/model/building_model.dart';
import 'package:complex/newentityfeatures/building/repo/buildingmodel_repository.dart';

part 'buildingmodel_list_event.dart';
part 'buildingmodel_list_state.dart';
part 'buildingmodel_list_bloc.freezed.dart';

class BuildingModelListBloc
    extends Bloc<BuildingModelListEvent, BuildingModelListState> {
  final BuildingModelRepository _mRepository;

  BuildingModelListBloc(this._mRepository)
      : super(BuildingModelListState.initial());

  @override
  Stream<BuildingModelListState> mapEventToState(
    BuildingModelListEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield const BuildingModelListState.initial();
      },
      getListData: (e) async* {
        yield const BuildingModelListState.isBusy();
        BuildingModelRepositoryReturnData returnData =
            await _mRepository.getAllBuildingModels(e.entityType, e.entityID);

        if (returnData.errorType == -1)
          yield BuildingModelListState.isListDataLoaded(returnData.itemlist);
        else if (returnData.errorType == 1)
          yield BuildingModelListState.hasLogicalFailure(returnData.error);
        else
          yield BuildingModelListState.hasExceptionFailure(returnData.error);
      },
      deleteItemWithData: (e) async* {
        yield BuildingModelListState.isBusy();
        BuildingModelRepositoryReturnData returnData =
            await _mRepository.deleteBuildingModelWithData(
          e.item,
          e.entitytype,
          e.entityid,
        );
        if (returnData.errorType == -1)
          yield BuildingModelListState.isDeleted();
        else if (returnData.errorType == 1)
          yield BuildingModelListState.hasLogicalFailure(returnData.error);
        else
          yield BuildingModelListState.hasExceptionFailure(returnData.error);
      },
    );
  }
}
