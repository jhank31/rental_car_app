import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental_car_app/presentation/car_list/bloc/car_list_bloc.dart';
import 'package:rental_car_app/presentation/shared/shared.dart';

class CarListPage extends StatelessWidget {
  const CarListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose your car'),
        centerTitle: true,
        foregroundColor: Colors.black,
      ),
      body: BlocBuilder<CarListBloc, CarListState>(
        builder: (context, state) {
          if (state is CarsListLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CarsListLoaded) {
            return ListView.builder(
              itemCount: state.cars.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: CarCard(car: state.cars[index]),
                );
              },
            );
          } else if (state is CarsError) {
            return Center(child: Text('error ${state.message}'));
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
