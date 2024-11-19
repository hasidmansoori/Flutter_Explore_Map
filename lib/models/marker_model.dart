import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerModel {
  final String id;
  final LatLng position;
  final String name;
  final String description;
  final String iconPath;

  MarkerModel({
    required this.id,
    required this.position,
    required this.name,
    required this.description,
    required this.iconPath,
  });
}
