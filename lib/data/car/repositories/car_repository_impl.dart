import 'package:dartz/dartz.dart';
import 'package:rental_car_app/core/errors/failures.dart';
import 'package:rental_car_app/data/car/datasource/car_data_source.dart';
import 'package:rental_car_app/data/car/models/car_model.dart';
import 'package:rental_car_app/domain/car/entity/car.dart';
import 'package:rental_car_app/domain/car/repositories/car_repository.dart';

class CarRepositoryImpl extends CarRepository {
  final CarDataSource dataSource;

  CarRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, List<Car>>> fetchCars() async {
    try {
      final List<CarModel> result = await dataSource.fetchCars();
      return Right(result.map((toElement) => toElement.toEntity()).toList());
    } on ServerFailure {
      return const Left(ServerFailure('Ocurrio un error en el servidor'));
    } on ConnectionFailure {
      return const Left(ConnectionFailure('Ocurrio un error de conexión'));
    }
  }
}
