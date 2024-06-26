import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental_car_app/core/dependency_inyection/dependency_inyection.dart';
import 'package:rental_car_app/main.dart';
import 'package:rental_car_app/presentation/car_list/bloc/car_list_bloc.dart';

class BlocProviders extends StatelessWidget {
  const BlocProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => di<CarListBloc>()..add(LoadListCars())),
    ], child: const MyApp());
  }
}
