import 'package:flutter/material.dart';
import 'package:rental_car_app/core/core.dart';
import 'package:rental_car_app/domain/car/entity/car.dart';
import 'package:rental_car_app/presentation/map/widgets/widgets.dart';

class CarDetailCard extends StatelessWidget {
  final Car car;
  const CarDetailCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: screenSize(context, 'width', 1),
            decoration: const BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38, spreadRadius: 0, blurRadius: 10)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  car.model,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                            width: 30,
                            child: Icon(Icons.directions_car,
                                color: Colors.white)),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '> ${car.distance}km',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 30,
                          child: Icon(
                            Icons.battery_full,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '> ${car.fuelCapacity} L',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Features',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const FutureIcons(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$${car.pricePerHour}/hour',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          child: const Text(
                            'Book Now',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              right: 10,
              top: 30,
              child: Image.network(
                car.diagonalImage,
                height: 160,
              ))
        ],
      ),
    );
  }
}
