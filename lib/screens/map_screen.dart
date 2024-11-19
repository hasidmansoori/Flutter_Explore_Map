import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/marker_model.dart';
import '../widgets/custom_fab.dart';
import '../widgets/marker_info_sheet.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController _mapController;
  String _selectedCategory = "Cycle";

  // Predefined markers by category
  final Map<String, List<MarkerModel>> _markerData = {
    "Cycle": [
      MarkerModel(
        id: "cycle1",
        position: LatLng(37.7749, -122.4194),
        name: "Cycle Spot 1",
        description: "A great spot for cycling!",
        iconPath: "assets/images/cycle.png",
      ),
    ],
    "Shopping": [
      MarkerModel(
        id: "shopping1",
        position: LatLng(37.7799, -122.4294),
        name: "Shopping Spot 1",
        description: "Best shopping center in town.",
        iconPath: "assets/images/shopping.png",
      ),
    ],
    "Restaurant": [
      MarkerModel(
        id: "restaurant1",
        position: LatLng(37.7849, -122.4094),
        name: "Restaurant Spot 1",
        description: "Delicious food served here.",
        iconPath: "assets/images/restaurant.png",
      ),
    ],
  };

  List<Marker> get _filteredMarkers {
    final selectedMarkers = _markerData[_selectedCategory] ?? [];
    return selectedMarkers.map((data) {
      return Marker(
        markerId: MarkerId(data.id),
        position: data.position,
        infoWindow: InfoWindow(
          title: data.name,
          snippet: data.description,
          onTap: () => _showInfoSheet(data),
        ),
        icon: BitmapDescriptor.defaultMarker,
      );
    }).toList();
  }

  void _showInfoSheet(MarkerModel data) {
    showModalBottomSheet(
      context: context,
      builder: (_) => MarkerInfoSheet(data: data),
    );
  }

  void _changeCategory(String category) {
    setState(() {
      _selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explore Map"),
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: LatLng(37.7749, -122.4194),
              zoom: 12,
            ),
            markers: Set.from(_filteredMarkers),
            onMapCreated: (controller) => _mapController = controller,
          ),
          CustomFAB(
            onCategoryChanged: _changeCategory,
          ),
        ],
      ),
    );
  }
}
