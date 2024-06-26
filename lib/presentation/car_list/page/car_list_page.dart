import 'package:flutter/material.dart';
import 'package:rental_car_app/domain/car/entity/car.dart';
import 'package:rental_car_app/presentation/shared/shared.dart';

class CarListPage extends StatelessWidget {
  CarListPage({super.key});
  final List<Car> cars = [
    Car(model: 'Cadillag', distance: 254, fullCapacity: 15, priceHoure: 34),
    Car(model: 'Cadillag', distance: 254, fullCapacity: 15, priceHoure: 34),
    Car(model: 'Cadillag', distance: 254, fullCapacity: 15, priceHoure: 34),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose your car'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: CarCard(car: cars[index]),
          );
        },
      ),
    );
  }
}
