import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:complex/newentityfeatures/building/model/building_model.dart';
import 'package:complex/newentityfeatures/building/repo/buildingmodel_repository.dart';

part 'buildingmodel_item_state.dart';
part 'buildingmodel_item_event.dart';
part 'buildingmodel_item_bloc.freezed.dart';

class BuildingModelItemBloc
    extends Bloc<BuildingModelItemEvent, BuildingModelItemState> {
  final BuildingModelRepository _mrepository;

  BuildingModelItemBloc(this._mrepository)
      : super(BuildingModelItemState.initial());

  @override
  Stream<BuildingModelItemState> mapEventToState(
    BuildingModelItemEvent event,
  ) async* {
    yield* event.map(
      createItem: (e) async* {
        yield BuildingModelItemState.isBusy();
        BuildingModelRepositoryReturnData returnData = await _mrepository
            .createBuildingModel(e.item, e.entityType, e.entityID);
        if (returnData.errorType == -1)
          yield BuildingModelItemState.isSaved();
        else if (returnData.errorType == 1)
          yield BuildingModelItemState.hasLogicalFailure(returnData.error);
        else
          yield BuildingModelItemState.hasExceptionFailure(returnData.error);
      },
      updateItem: (e) async* {
        yield BuildingModelItemState.isBusy();
        BuildingModelRepositoryReturnData returnData = await _mrepository
            .updateBuildingModel(e.item, e.entityType, e.entityID);
        if (returnData.errorType == -1)
          yield BuildingModelItemState.isSaved();
        else if (returnData.errorType == 1)
          yield BuildingModelItemState.hasLogicalFailure(returnData.error);
        else
          yield BuildingModelItemState.hasExceptionFailure(returnData.error);
      },
      updateItemWithDiff: (e) async* {
        yield BuildingModelItemState.isBusy();
        BuildingModelRepositoryReturnData returnData =
            await _mrepository.updateBuildingModelWithDiff(
                e.newItem, e.oldItem, e.entityType, e.entityID);
        if (returnData.errorType == -1)
          yield BuildingModelItemState.isSaved();
        else if (returnData.errorType == 1)
          yield BuildingModelItemState.hasLogicalFailure(returnData.error);
        else
          yield BuildingModelItemState.hasExceptionFailure(returnData.error);
      },
      getAdditionalDataEntryIDAvailable: (e) async* {},
      getForNewEntry: (e) async* {
        yield BuildingModelItemState.isBusy();
        BuildingModelRepositoryReturnData returnData =
            await _mrepository.getInitialData(e.entityType, e.entityID);
        if (returnData.errorType == -1)
          yield BuildingModelItemState.isSaved();
        else if (returnData.errorType == 1)
          yield BuildingModelItemState.hasLogicalFailure(returnData.error);
        else
          yield BuildingModelItemState.hasExceptionFailure(returnData.error);
      },
    );
  }
}
