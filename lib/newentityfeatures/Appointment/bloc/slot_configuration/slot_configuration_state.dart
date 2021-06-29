import 'package:equatable/equatable.dart';

import '../../models/slot_configuration_model/slot_configuration_model.dart';

abstract class SlotConfigurationState extends Equatable {
  const SlotConfigurationState();
}

class SlotConfigurationLoading extends SlotConfigurationState {
  @override
  List<Object> get props => [];
}

class SlotConfigurationLoaded extends SlotConfigurationState {
  final Stream<SlotConfigurationModel> slotConfiguration;
  SlotConfigurationLoaded(this.slotConfiguration);
  @override
  List<Object> get props => [slotConfiguration];
}

class SlotConfigurationError extends SlotConfigurationState {
  final String message;
  const SlotConfigurationError(this.message);
  @override
  List<Object> get props => [message];
}
