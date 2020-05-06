import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMap extends StatefulWidget {
  final double lan;
  final double lon;
  MyMap(this.lan, this.lon);
  @override
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  @override
  Widget build(BuildContext context) {
    return new GoogleMap(
        markers:{ 
          Marker(
            markerId: MarkerId('First'),
            position: LatLng(widget.lan, widget.lon),
            draggable: true,
          )
        },
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(widget.lan, widget.lon),
          zoom: 14.4746,
        ));
  }
}
