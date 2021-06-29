import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';

import '../../models/slot_configuration_model/slot_configuration_model.dart';
import '../../services/slot_configuration_repository.dart';
import 'bloc.dart';

class SlotConfigurationBloc
    extends Bloc<SlotConfigurationEvent, SlotConfigurationState> {
  final SlotConfigurationRepository repository;

  SlotConfigurationBloc(this.repository) : super(null);

  get initialState => SlotConfigurationLoading();

  @override
  Stream<SlotConfigurationState> mapEventToState(
      SlotConfigurationEvent event,
      ) async* {
    yield SlotConfigurationLoading();
    if (event is GetSlotConfiguration) {
      try {
        yield SlotConfigurationLoading();
        Stream<SlotConfigurationModel> slotConfiguration = repository
            .getSlotConfiguration(event.slotId, event.serviceProviderId);
        yield SlotConfigurationLoaded(slotConfiguration);
      } on PlatformException {
        yield SlotConfigurationError('Some Firebase error has occurred!');
      } catch (err) {
      }
    }
  }
}
