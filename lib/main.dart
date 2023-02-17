import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'attendance.dart';
import 'square.dart';
import 'package:flutter_application_1/constants/routes.dart';
import 'package:flutter_application_1/notification.dart';
import 'package:flutter_application_1/setTask.dart';
import 'Homepage.dart';
import 'package:flutter_application_1/nav.dart';
import './experimentation/setTaskExperiment.dart';

//import 't';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      debugShowCheckedModeBanner: false,
      home: NavigationBarPage(),
      title: 'Nirman',
      routes: {
        addTaskRoute: (context) => const Settask(),
        homeRoute: (context) => const Homepage(),
        notificationRoute: (context) => const NotificationPage(),
        // attendanceRoute: (context) => const Attendance(),
      },
    );
  }
}
