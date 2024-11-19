import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  final Function(String) onCategoryChanged;

  CustomFAB({required this.onCategoryChanged});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      right: 20,
      child: Column(
        children: [
          FloatingActionButton(
            onPressed: () => onCategoryChanged("Cycle"),
            backgroundColor: Colors.blue,
            child: const Icon(Icons.directions_bike),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () => onCategoryChanged("Shopping"),
            backgroundColor: Colors.green,
            child: const Icon(Icons.shopping_cart),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () => onCategoryChanged("Restaurant"),
            backgroundColor: Colors.red,
            child: const Icon(Icons.restaurant),
          ),
        ],
      ),
    );
  }
}
