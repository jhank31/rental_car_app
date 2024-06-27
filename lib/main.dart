import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rental_car_app/bloc_providers.dart';
import 'package:rental_car_app/core/config/router/app_router.dart';
import 'package:rental_car_app/core/dependency_inyection/dependency_inyection.dart';
import 'package:rental_car_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await init();
  runApp(const BlocProviders());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white, scrolledUnderElevation: 0)),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routerConfig: appRouter,
      
    );
  }
}
