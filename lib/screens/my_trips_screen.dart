import 'package:flutter/material.dart';

class MyTripsScreen extends StatelessWidget {
  const MyTripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Trips')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text('Upcoming Trips', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Card(
            child: ListTile(
              title: Text('To: Johar Town'),
              subtitle: Text('Tomorrow at 08:00 AM\nDriver: Ali'),
              trailing: Text('Status: Approved'),
              isThreeLine: true,
            ),
          ),
          SizedBox(height: 20),
          Text('Past Trips', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Card(
            child: ListTile(
              title: Text('To: Campus'),
              subtitle: Text('Oct 20 at 07:30 AM\nDriver: Sara'),
              trailing: Text('Status: Completed'),
              isThreeLine: true,
            ),
          ),
        ],
      ),
    );
  }
}