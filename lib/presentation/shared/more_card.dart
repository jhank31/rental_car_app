import 'package:flutter/material.dart';
import 'package:rental_car_app/core/core.dart';
import 'package:rental_car_app/domain/car/entity/car.dart';

class MoreCard extends StatelessWidget {
  final Car car;

  const MoreCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ConstantsColors.carShowMoreCarsdBackgroundColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(car.model,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  )),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.directions_car,
                    color: Colors.white,
                    size: 16,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('> ${car.distance.toStringAsFixed(0)}km',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.battery_full, color: Colors.white, size: 16),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('${car.fuelCapacity.toString()}km',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      )),
                ],
              )
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
            size: 24,
          )
        ],
      ),
    );
  }
}
