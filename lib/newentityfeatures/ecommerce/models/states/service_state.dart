import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';

class ServiceState {
  bool loading;
  List<LimitedServiceModel> services;
  bool hasError;
  String errorMessage;
  int offset;
  ServiceState({
    this.loading: false,
    this.services: const [],
    this.hasError: false,
    this.errorMessage,
    this.offset,
  });

  ServiceState copyWith({
    bool loading,
    List<LimitedServiceModel> services,
    bool hasError: false,
    String errorMessage,
    int offset,
  }) {
    return ServiceState(
      loading: loading ?? this.loading,
      services: services ?? this.services,
      hasError: hasError ?? this.hasError,
      errorMessage: errorMessage ?? this.errorMessage,
      offset: offset ?? this.offset,
    );
  }
}

abstract class ServiceEvent {}

class FetchedServiceEvent extends ServiceEvent {}

class SearchedServiceEvent extends ServiceEvent {
  final String query;

  SearchedServiceEvent(this.query);
}

class FetchedMoreServices extends ServiceEvent {}
