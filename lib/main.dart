import 'package:flutter/material.dart';
import 'package:flutter_app/pages/oppurtunities.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_app/pages/apply.dart';
import 'package:flutter_app/pages/browse_career.dart';
import 'package:flutter_app/pages/dashboard.dart';
import 'package:flutter_app/pages/guidance.dart';
import 'package:flutter_app/pages/schedule_appointment.dart';
import 'package:flutter_app/pages/view_more.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.montserratTextTheme(), // Apply Google Fonts
      ),
      home: Opportunities(), // Set the Opportunities as the initial screen
      routes: {
        '/apply': (context) => Apply(),
        '/browseCareer': (context) => BrowseCareer(),
        '/dashboard': (context) => Dashboard(),
        '/guidance': (context) => Guidance(),
        '/oppurtunities': (context) => Opportunities(),
        '/scheduleAppointment': (context) => ScheduleAppointment(),
        '/viewMore': (context) => ViewMore(),
      },

      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Dashboard(),
        );
      },
    );
  }
}
