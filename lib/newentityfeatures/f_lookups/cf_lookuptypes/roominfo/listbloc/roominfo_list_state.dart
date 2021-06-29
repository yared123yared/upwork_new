part of 'bloc.dart';



@freezed
class RoomInfoListState extends Equatable {
  const RoomInfoListState();
  @override
  List<Object> get props => [];
}






class IsBusy extends RoomInfoListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}


class HasLogicalFaliur extends RoomInfoListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends RoomInfoListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

 class IsListDataLoaded extends RoomInfoListState {
   IsListDataLoaded({@required this.listdata});
 
   final List<RoomInfo> listdata;
   @override
   List<Object> get props => [listdata];
 }
 
 


class IsDeleted extends RoomInfoListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}



