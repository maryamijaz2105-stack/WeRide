import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text('Welcome back, Student!', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () => Navigator.pushNamed(context, '/find'),
            icon: const Icon(Icons.search),
            label: const Text('Find a Ride'),
          ),
          const SizedBox(height: 10),
          ElevatedButton.icon(
            onPressed: () => Navigator.pushNamed(context, '/offer'),
            icon: const Icon(Icons.add_road),
            label: const Text('Offer a Ride'),
          ),
          const SizedBox(height: 10),
          ElevatedButton.icon(
            onPressed: () => Navigator.pushNamed(context, '/trips'),
            icon: const Icon(Icons.list),
            label: const Text('My Trips'),
          ),
          const SizedBox(height: 40),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white),
            onPressed: () {
              // Placeholder for SOS action
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('SOS Alert Triggered!')));
            },
            icon: const Icon(Icons.warning),
            label: const Text('SOS / Emergency'),
          ),
        ],
      ),
    );
  }
}