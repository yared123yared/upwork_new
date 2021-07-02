import 'package:bloc/bloc.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:complex/newentityfeatures/commonrepo/genericdbmethods_repository.dart';
import 'package:complex/newentityfeatures/ecommerce/models/location_data.dart';
import 'package:complex/newentityfeatures/shared-ecommerce/utils/ecommerce_exception.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
class LocationDataServersState {

  final Map<String, List<String>> locationserverdata;
  final bool loading;
  final bool loaded;
  final bool hasError;
  final String error;
  final bool requirenewdata;
  final country;
  final state;

  LocationDataServersState({ this.requirenewdata:true,
    this.locationserverdata:null, this.loading:false, this.loaded:false, this.hasError:false, this.error:null,this.country:null, this.state:null
  });

}

abstract class LocationDataServersEvent {}

class GetLocationDataServersEvent extends LocationDataServersEvent {
  UserModel curUserModel;
  double lati;
  double longi;
  GetLocationDataServersEvent( this.curUserModel,this.lati,this.longi  );
}


class LocationDataServersBloc
    extends Bloc<LocationDataServersEvent, LocationDataServersState> {
  //GenericDBRepository mrepository = Get.find();

  LocationDataServersBloc() : super(LocationDataServersState());

  @override
  Stream<LocationDataServersState> mapEventToState(
      LocationDataServersEvent event,) async* {
    try {
      if (event is GetLocationDataServersEvent) {
        yield new LocationDataServersState(loading: true,
            hasError: false,
            error: null,
            locationserverdata: null);
        LocationData ld = new LocationData(
            Longitude: event.lati, Latitude: event.longi);


        List<String>location = await GenericDBRepository
            .GetLocationInformationInitiate(
            ld, event.curUserModel.locationservers);
      }
    }
    on EcommerceException catch (e) {
      yield new LocationDataServersState(
          loading: false, hasError: true, error: e.errorMessage);
    }
  }


}