import 'package:dartz/dartz.dart';
import 'package:rental_car_app/core/errors/failures.dart';
import 'package:rental_car_app/domain/car/entity/car.dart';
import 'package:rental_car_app/domain/car/repositories/car_repository.dart';

class GetCarsUseCase {
  final CarRepository _carRepository;

  GetCarsUseCase(this._carRepository);

  Future<Either<Failure, List<Car>>> execute() async {
    return await _carRepository.fetchCars();
  }
}
