import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/auth_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';
import 'screens/find_ride_screen.dart';
import 'screens/offer_ride_screen.dart';
import 'screens/ride_details_screen.dart';
import 'screens/my_trips_screen.dart';

void main() {
  runApp(const WeRideApp());
}

class WeRideApp extends StatelessWidget {
  const WeRideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeRide Prototype',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/auth': (context) => const AuthScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomeScreen(),
        '/find': (context) => const FindRideScreen(),
        '/offer': (context) => const OfferRideScreen(),
        '/details': (context) => const RideDetailsScreen(),
        '/trips': (context) => const MyTripsScreen(),
      },
    );
  }
}
