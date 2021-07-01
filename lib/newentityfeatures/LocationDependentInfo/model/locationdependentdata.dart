
 class LocationDependentDataState  {


   final String country;
   final double latitude;
   final double longitude;
   final List<String> locationservers;
   final String locatedstate;
   final String locateddistrict;
   final String givenstate;
   final String givendistrict;
   final List<String> locatedrealestateservers;
   final List<String> locatedjobrelatedservers;
   final List<String> locatedserviceprovidersservers;
   final List<String> locatedvehiclesservers;
   final List<String> locatedproductservers;
   final List<String> givenrealestateservers;
   final List<String> givenjobrelatedservers;
   final List<String> givenserviceprovidersservers;
   final List<String> givenvehiclesservers;
   final List<String> givenproductservers;
   final bool locationserversloaded;
   final bool locationservererror;
   final bool dataloadedforgivenstate;
   final bool dataloadedforlocatedstate;


  final bool hasError;
  final String error;
  final bool locationinfoloaded;

  LocationDependentDataState({
    this.country,
    this.latitude:0,
    this.longitude:0,
    this.locationservers:null,
    this.locatedstate:null,
    this.locateddistrict:null,
    this.givenstate:null,
    this.givendistrict:null,
    this.locatedrealestateservers:null,
    this.locatedjobrelatedservers:null,
    this.locatedserviceprovidersservers:null,
    this.locatedvehiclesservers:null,
    this.locatedproductservers:null,
    this.givenrealestateservers:null,
    this.givenjobrelatedservers:null,
    this.givenserviceprovidersservers:null,
    this.givenvehiclesservers:null,
    this.givenproductservers:null,
    this.locationserversloaded:false,
    this.locationservererror:false,
    this.hasError:false,
    this.error:null,
    this.locationinfoloaded:false,
    this.dataloadedforgivenstate:false,
    this.dataloadedforlocatedstate:false

  });

  LocationDependentDataState copyWith ({

    String country,
    double latitude,
    double longitude,
    List<String> locationservers,
    String locatedstate,
    String locateddistrict,
    String givenstate,
    String givendistrict,
    List<String> locatedrealestateservers,
    List<String> locatedjobrelatedservers,
    List<String> locatedserviceprovidersservers,
    List<String> locatedvehiclesservers,
    List<String> locatedproductservers,
    List<String> givenrealestateservers,
    List<String> givenjobrelatedservers,
    List<String> givenserviceprovidersservers,
    List<String> givenvehiclesservers,
    List<String> givenproductservers,
    bool locationserversloaded,
    bool locationservererror,
    bool hasError,
    String error,
    bool locationinfoloaded,


 })
  {




  }


}

 abstract class LocationDependentEvent {}
 class Getlocationservers extends LocationDependentEvent {
   final String  country;

   Getlocationservers(this.country);
 }
 class GetDataServersForLatLong extends LocationDependentEvent {
   final double latitude;
   final double longitude;

   GetDataServersForLatLong(this.latitude,this.longitude);
 }

 class GetDataServersForLocationAddress extends LocationDependentEvent {
   final String country;
   final String state;

   GetDataServersForLocationAddress(this.country,this.state);
 }