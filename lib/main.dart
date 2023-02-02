<<<<<<< HEAD
import 'package:camera/camera.dart';
=======
import 'package:firebase_core/firebase_core.dart';
>>>>>>> 9f61eb8d9937527a8a54ff6c020eea641e27eb1d
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:snapbit/components/google_sign_in.dart';
import 'package:snapbit/screens/index.dart';
import 'package:snapbit/screens/loginScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  await Hive.initFlutter();

  // open a box
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.openBox("Habit_Database");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({super.key});

  @override
<<<<<<< HEAD
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IndexPage(),
      // home: const Profile(),
=======
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child:FutureBuilder(
        // Initialize FlutterFire
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          // Check for errors
          if (snapshot.hasError) {
            return  Center(child: Text('Something went wrong'));
          }

          // Once complete, show your application
          else if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: LoginScreen(),
            );
          }

          // Otherwise, show something whilst waiting for initialization to complete
          return Center(child: CircularProgressIndicator(),);
        },
      )
>>>>>>> 9f61eb8d9937527a8a54ff6c020eea641e27eb1d
    );
  }

