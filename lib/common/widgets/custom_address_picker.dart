import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';

import '../presentation.dart';

class PickedLocation {
  final String id, address, country, state, town, zipCode, geoHash;
  final double latitude, longitude;

  const PickedLocation({
    this.id,
    this.address,
    this.country,
    this.state,
    this.town,
    this.zipCode,
    this.geoHash,
    this.latitude,
    this.longitude,
  });
}

///this widget is for picking address from googles maps apis
class CustomAddressPicker extends StatelessWidget {
  final CustomTextFieldController controller;
  final Validate validate;
  final String title;
  final String initialValue;
  final bool syncInitial;
  final LatLng initialPosition;

  ///with to get the [PickedLocation.state],[PickedLocation.town],[PickedLocation.country],[PickedLocation.zipCode],[PickedLocation.geoHash]
  ///this will additional time
  final bool withGeocoding;
  final Function(PickedLocation l) displayData;
  final Function(PickedLocation l) onPickLocation;

  CustomAddressPicker({
    Key key,
    @required this.displayData,
    @required this.controller,
    this.withGeocoding = true,
    this.initialPosition,
    this.syncInitial,
    this.validate,
    this.onPickLocation,
    this.title,
    this.initialValue,
  })  : assert(displayData != null),
        assert(controller != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: controller,
      syncInitial: syncInitial,
      title: title ?? 'Address',
      enabled: false,
      initialValue: initialValue,
      validate: validate ?? Validate.withOption(maxLength: 250),
      onTap: () async {
        var result = await pickLocation(context);

        if (result == null) return;

        //the location which will be returned
        PickedLocation location = PickedLocation(
          id: result.placeId,
          address: result.formattedAddress,
          latitude: result.geometry.location.lat,
          longitude: result.geometry.location.lng,
        );

        if (withGeocoding) {
          var place = await geoCodeLocation(location);

          location = PickedLocation(
            id: location.id,
            address: location.address,
            latitude: location.latitude,
            longitude: location.longitude,
            country: place.country,
            town: place.locality ?? place.subLocality,
            state: place.administrativeArea,
            zipCode: place.postalCode,
            geoHash: ' ',
          );
        }
        controller.text = displayData(location);
        onPickLocation?.call(location);
      },
    );
  }

  //return null in fail state
  Future<Placemark> geoCodeLocation(PickedLocation location) async {
    var places = await placemarkFromCoordinates(
      location.latitude,
      location.longitude,
      localeIdentifier: location.id,
    );

    if (places == null || places.isEmpty) return null;

    return places.first;
  }

  Future<PickResult> pickLocation(BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PlacePicker(
          apiKey: 'AIzaSyB3rwkm1HCY-GgsA4mrCrn6ulxbs0FrqD0',
          onPlacePicked: (result) => Navigator.of(context).pop(result),
          initialPosition: initialPosition ?? LatLng(0, 0),
          enableMyLocationButton: true,
          useCurrentLocation: true,
        ),
      ),
    );
    // return showLocationPicker(
    //   context,
    //   'AIzaSyB3rwkm1HCY-GgsA4mrCrn6ulxbs0FrqD0',
    //   myLocationButtonEnabled: true,
    //   automaticallyAnimateToCurrentLocation: initialPosition == null,
    //   hintText: "Select Location",
    //   layersButtonEnabled: true,
    //   initialCenter: initialPosition ?? const LatLng(45.521563, -122.677433),
    //   resultCardPadding: EdgeInsets.all(0),
    //   resultCardConfirmIcon: Icon(Icons.check),
    //   searchBarBoxDecoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(5),
    //     color: Colors.white,
    //   ),
    // );
  }
}
