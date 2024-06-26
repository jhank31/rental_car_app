import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rental_car_app/domain/car/entity/car.dart';

class CarCard extends StatelessWidget {
  final Car car;
  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push('/carDetailPage', extra: car),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 7),
                spreadRadius: 5)
          ],
        ),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.network(
              car.edgeImage,
              height: 120,
            ),
            Text(
              car.model,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icons/gps.png'),
                    Text('${car.distance.toStringAsFixed(0)}km'),
                    Image.asset('assets/icons/pump.png'),
                    Text('${car.fuelCapacity.toStringAsFixed(0)}L')
                  ],
                ),
                Text('\$${car.pricePerHour.toStringAsFixed(0)}/h',
                    style: const TextStyle(fontSize: 16))
              ],
            )
          ],
        ),
      ),
    );
  }
}
