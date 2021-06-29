part of 'bloc.dart';

class PaymentPeriodInfoState extends Equatable {
  const PaymentPeriodInfoState();
  @override
  List<Object> get props => [];
}



class IsBusy extends PaymentPeriodInfoState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends PaymentPeriodInfoState {
  const IsSaved();
  @override
  List<Object> get props => [];
}


class HasLogicalFaliur extends PaymentPeriodInfoState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends PaymentPeriodInfoState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}



// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends PaymentPeriodInfoState {
    IsReadyForDetailsPage({@required this.entityid,@required this.entitytype,@required this.detailstype,@required this.sessionterms});
 
   
   final String detailstype; //create or update
   final String entityid;
   final String entitytype;
   final List<String> sessionterms;
   @override
   List<Object> get props => [entityid, entitytype,detailstype,sessionterms];
}




