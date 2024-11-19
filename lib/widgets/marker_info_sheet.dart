import 'package:flutter/material.dart';
import '../models/marker_model.dart';

class MarkerInfoSheet extends StatelessWidget {
  final MarkerModel data;

  MarkerInfoSheet({required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(data.description),
          const SizedBox(height: 20),
          Image.asset(data.iconPath, height: 100),
        ],
      ),
    );
  }
}
