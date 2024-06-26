import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rental_car_app/core/config/router/app_router.dart';
import 'package:rental_car_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routerConfig: appRouter,
    );
  }
}
