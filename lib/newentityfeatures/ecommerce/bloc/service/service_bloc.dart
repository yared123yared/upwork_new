import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:complex/newentityfeatures/ecommerce/bloc/product/product_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/states/service_state.dart';
export '../../models/states/service_state.dart';
import '../../repositories/service/service_repository.dart';

class ServiceBloc extends Bloc<ServiceEvent, ServiceState> {
  final _serviceRepository = ServiceRepository();
  final ProductBloc productBloc;
  ServiceBloc(this.productBloc) : super(ServiceState());

  @override
  Stream<ServiceState> mapEventToState(ServiceEvent event) async* {
    if (event is FetchedServiceEvent) {
      yield state.copyWith(
        loading: true,
        offset: 0,
      );
      final List<LimitedServiceModel> services =
          await _serviceRepository.getServices(
        productBloc.state.productSearchInformationConfig,
      );
      yield state.copyWith(
        loading: false,
        services: services,
      );
    } else if (event is SearchedServiceEvent) {
      yield state.copyWith(
        loading: true,
        services: [],
        offset: 0,
      );
      final List<LimitedServiceModel> services =
          await _serviceRepository.getServices(
        productBloc.state.productSearchInformationConfig,
        query: event.query,
      );
      yield state.copyWith(
        loading: false,
        services: services,
      );
    } else if (event is FetchedMoreServices) {
      yield state.copyWith(
        loading: true,
        offset: state.services.length,
      );
      final services = await _serviceRepository.getServices(
        productBloc.state.productSearchInformationConfig,
        offset: state.services.length,
      );
      yield state.copyWith(
        loading: false,
        services: [...state.services, ...services],
      );
    }
  }
}
