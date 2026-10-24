import 'package:flutter/material.dart';

class OfferRideScreen extends StatelessWidget {
  const OfferRideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Offer a Ride')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const TextField(decoration: InputDecoration(labelText: 'Starting Point', border: OutlineInputBorder())),
          const SizedBox(height: 16),
          const TextField(decoration: InputDecoration(labelText: 'Destination', border: OutlineInputBorder())),
          const SizedBox(height: 16),
          const TextField(decoration: InputDecoration(labelText: 'Departure Time (e.g., 08:00 AM)', border: OutlineInputBorder())),
          const SizedBox(height: 16),
          const TextField(decoration: InputDecoration(labelText: 'Available Seats', border: OutlineInputBorder()), keyboardType: TextInputType.number),
          const SizedBox(height: 16),
          const TextField(decoration: InputDecoration(labelText: 'Estimated Fuel Contribution (Rs.)', border: OutlineInputBorder()), keyboardType: TextInputType.number),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Publish Ride'),
          ),
        ],
      ),
    );
  }
}