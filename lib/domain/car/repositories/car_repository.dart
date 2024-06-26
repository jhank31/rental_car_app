import 'package:dartz/dartz.dart';
import 'package:rental_car_app/core/core.dart';
import 'package:rental_car_app/domain/car/entity/car.dart';

abstract class CarRepository {
  Future<Either<Failure, List<Car>>> fetchCars();
}

