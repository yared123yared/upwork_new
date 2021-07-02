
 class LocationDependentDataState  {
   String country;
   String state;
   String district;
   List<String> realestatedataservers;
   List<String> jobrelateddataservers;
   List<String> serviceprovidersdataservers;
   List<String> vehiclesdataservers;
   List<String> productdataservers;
   List<String> petdataservers;
   bool locationserversloaded;
   bool locationservererror;
   bool hasError;
   String error;
   bool locationinfoloaded;
   DateTime lastupdateddataservers;
   DateTime lastupdatedlocationservers;

   LocationDependentDataState (String icountry)
   {
     country =icountry;
     locationserversloaded=false;
   }





}

