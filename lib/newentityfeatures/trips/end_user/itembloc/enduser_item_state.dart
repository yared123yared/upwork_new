part of 'bloc.dart';

class EndUserState extends Equatable {
  const EndUserState();
  @override
  List<Object> get props => [];
}

class BookTripSuccess extends EndUserState {
  final String orderId;

  BookTripSuccess({@required this.orderId});
  @override
  List<Object> get props => [];
}

class BookTripFail extends EndUserState {
  final String error;

  BookTripFail({@required this.error});

  @override
  List<Object> get props => [];
}

//
class IsBusy extends EndUserState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends EndUserState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends EndUserState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends EndUserState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends EndUserState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
  });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;

  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
      ];
}
