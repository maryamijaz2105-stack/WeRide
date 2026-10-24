import 'package:flutter/material.dart';

class FindRideScreen extends StatelessWidget {
  const FindRideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Find a Ride')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const TextField(decoration: InputDecoration(labelText: 'Pickup Location', border: OutlineInputBorder())),
                const SizedBox(height: 10),
                const TextField(decoration: InputDecoration(labelText: 'Destination', border: OutlineInputBorder())),
                const SizedBox(height: 10),
                ElevatedButton(onPressed: () {}, child: const Text('Search Rides')),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Ali - Leaving at 8:00 AM'),
                  subtitle: const Text('From: Campus To: Johar Town\n2 Seats Available'),
                  trailing: const Text('Rs. 200'),
                  isThreeLine: true,
                  onTap: () => Navigator.pushNamed(context, '/details'),
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Sara - Leaving at 9:30 AM'),
                  subtitle: const Text('From: Campus To: DHA\n1 Seat Available'),
                  trailing: const Text('Rs. 300'),
                  isThreeLine: true,
                  onTap: () => Navigator.pushNamed(context, '/details'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}