import 'package:flutter/material.dart';
import 'package:rental_car_app/core/core.dart';
import 'package:rental_car_app/domain/car/entity/car.dart';
import 'package:rental_car_app/presentation/car_detail/widgets/tab_map.dart';
import 'package:rental_car_app/presentation/shared/shared.dart';

class CarDetailPage extends StatelessWidget {
  final Car car;
  const CarDetailPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.info_outline), Text('Information')],
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: Column(
          children: [
            CarCard(
                car: Car(
                    model: car.model,
                    distance: car.distance,
                    fuelCapacity: car.fuelCapacity,
                    pricePerHour: car.pricePerHour,
                    diagonalImage: car.diagonalImage,
                    edgeImage: car.edgeImage)),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: ConstantsColors.carCardBackgroundColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 5,
                          )
                        ],
                      ),
                      child: const Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'John Doe',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '\$10/hour',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  TabMap(car: car)
                ],
              ),
            ),
            // Container(
            //   padding: const EdgeInsets.all(20),
            //   child: Column(
            //     children: [
            //       MoreCard(
            //           car: Car(
            //               model: '${car.model}-1',
            //               distance: car.distance + 100,
            //               fuelCapacity: car.fuelCapacity + 100,
            //               pricePerHour: 34)),
            //       const SizedBox(
            //         height: 5,
            //       ),
            //       MoreCard(
            //           car: Car(
            //               model: '${car.model}-2',
            //               distance: car.distance + 200,
            //               fuelCapacity: car.fuelCapacity + 200,
            //               pricePerHour: 34)),
            //       const SizedBox(
            //         height: 5,
            //       ),
            //       MoreCard(
            //           car: Car(
            //               model: '${car.model}-3',
            //               distance: car.distance + 300,
            //               fuelCapacity: car.fuelCapacity + 300,
            //               pricePerHour: 34)),
            //     ],
            //   ),
            // )
          ],
        ));
  }
}
