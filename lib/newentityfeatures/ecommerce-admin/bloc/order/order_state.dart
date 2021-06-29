import '../../../ecommerce/models/ExplorePageRelatedModels.dart';

class OrderState {
  int inProgress;
  int readyToPick;
  int delivered;
  List<orderinfomodel> orders;
  bool loading;
  bool hasError;
  String errorMessage;

  OrderState({
    this.inProgress,
    this.readyToPick,
    this.delivered,
    this.orders,
    this.loading: false,
    this.hasError: false,
    this.errorMessage,
  });

  OrderState copyWith({
    int inProgress,
    int readyToPick,
    int delivered,
    List<orderinfomodel> orders,
    bool loading,
    bool hasError: false,
    String errorMessage,
  }) {
    return OrderState(
      inProgress: inProgress ?? this.inProgress,
      readyToPick: readyToPick ?? this.readyToPick,
      delivered: delivered ?? this.delivered,
      orders: orders ?? this.orders,
      loading: loading ?? this.loading,
      hasError: hasError ?? this.hasError,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

abstract class OrderEvent {}

class FetchedOrdersEvent extends OrderEvent {}

class ChangedOrderEvent extends OrderEvent {
  int index;
  orderinfomodel newOrder;
  ChangedOrderEvent({
    this.index,
    this.newOrder,
  });
}
