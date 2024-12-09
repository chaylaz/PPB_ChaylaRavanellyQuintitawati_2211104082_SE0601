import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:place_picker_google/place_picker_google.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  static final LatLng _kMapCenter =
      LatLng(19.018255973653343, 72.84793849278007);

  static final CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 11.0);

  final Set<Marker> _markers = {
    Marker(
      markerId: MarkerId("marker_1"),
      position: LatLng(19.018255973653343, 72.84793849278007),
      infoWindow: InfoWindow(title: "Marker 1"),
    ),
    Marker(
      markerId: MarkerId("marker_2"),
      position: LatLng(-6.9733165, 107.6281415),
      infoWindow: InfoWindow(title: "Marker 2"),
    ),
  };

  void showPlacePicker(BuildContext context) async {
    final result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PlacePicker(
          apiKey: 'AIzaSyDPvDvZpDtArA6A_Ajw5NOnO9FswRqQPOE',
        ),
      ),
    );

    if (result != null && result is LocationResult) {
      setState(() {
        _markers.add(
          Marker(
            markerId: MarkerId("selected_location"),
            position: result.latLng!,
            infoWindow: InfoWindow(title: "Lokasi Dipilih"),
          ),
        );
      });
      print("Lokasi yang dipilih: ${result.latLng}");
    } else {
      print("Tidak ada lokasi yang dipilih");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Maps with Place Picker"),
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _kInitialPosition,
            mapType: MapType.normal,
            myLocationEnabled: true,
            markers: _markers,
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () => showPlacePicker(context),
              child: const Icon(Icons.place),
              tooltip: "Pilih Lokasi",
            ),
          ),
        ],
      ),
    );
  }
}
