import 'package:rental_car_app/domain/car/entity/car.dart';

class CarModel extends Car {
  CarModel({
    required super.model,
    required super.distance,
    required super.fuelCapacity,
    required super.pricePerHour,
    required super.diagonalImage,
    required super.edgeImage,
  });

  factory CarModel.fromJson(Map<String, dynamic> map) {
    return CarModel(
      model: map['model'],
      distance: map['distance'],
      fuelCapacity: map['fuelCapacity'],
      pricePerHour: map['pricePerHour'],
      diagonalImage: map['diagonalImage'],
      edgeImage: map['edgeImage'],
    );
  }

  Car toEntity() {
    return Car(
      model: model,
      distance: distance,
      fuelCapacity: fuelCapacity,
      pricePerHour: pricePerHour,
      diagonalImage: diagonalImage,
      edgeImage: edgeImage,
    );
  }
}
