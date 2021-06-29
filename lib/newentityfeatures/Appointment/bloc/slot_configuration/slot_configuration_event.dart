import 'package:equatable/equatable.dart';

abstract class SlotConfigurationEvent extends Equatable {
  const SlotConfigurationEvent();
}

class GetSlotConfiguration extends SlotConfigurationEvent {
  final String slotId, serviceProviderId;

  GetSlotConfiguration(this.slotId, this.serviceProviderId);

  @override
  List<Object> get props => [slotId];
}
