import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:rental_car_app/domain/car/entity/car.dart';
import 'package:rental_car_app/presentation/map/widgets/widgets.dart';

class MapDetailPage extends StatelessWidget {
  final Car car;
  const MapDetailPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.pop();
            },
          ),
        ),
        body: Stack(
          children: [
            FlutterMap(
              options: const MapOptions(
                initialCenter: LatLng(51.5, -0.09),
                initialZoom: 13.0,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: const ['a', 'b', 'c'],
                )
              ],
            ),
             Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: CarDetailCard(car: car,),
            )
          ],
        ));
  }
}