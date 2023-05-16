import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late GoogleMapController mapController;
  LatLng? currentPosition;
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    super.initState();
    currentPosition = LatLng(0, 0);
    _getCurrentLocation();
  }

  void _getCurrentLocation() async {
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    if (position != null) {
      setState(() {
        currentPosition = LatLng(position.latitude, position.longitude);
        _markers.add(Marker(
          markerId: MarkerId("current_position"),
          position: currentPosition!,
          draggable: true,
          onDragEnd: _onMarkerDragEnd,
          infoWindow: InfoWindow(title: "Mi ubicación"),
        ));
      });
      mapController.animateCamera(
          CameraUpdate.newLatLngZoom(currentPosition!, 15));
    }
  }

  void _onMarkerDragEnd(LatLng position) {
    setState(() {
      currentPosition = position;
      _markers.clear();
      _markers.add(Marker(
        markerId: MarkerId("current_position"),
        position: currentPosition!,
        draggable: true,
        onDragEnd: _onMarkerDragEnd,
        infoWindow: InfoWindow(title: "Mi ubicación"),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300.0,
      padding: EdgeInsets.all(16.0),
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: currentPosition!,
          zoom: 15,
        ),
        markers: _markers,
      ),
    );
  }
}
