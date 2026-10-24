import 'package:flutter/material.dart';

class RideDetailsScreen extends StatelessWidget {
  const RideDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ride Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Driver: Ali', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text('Vehicle: Honda City (ABC-123)', style: TextStyle(fontSize: 16)),
            const Divider(),
            const Text('Route: Campus to Johar Town', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            const Text('Departure: 08:00 AM'),
            const Text('Seats Available: 2'),
            const Text('Cost Split: Rs. 200 per passenger'),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Ride Requested!')));
                  Navigator.pop(context);
                },
                child: const Text('Request to Join'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}