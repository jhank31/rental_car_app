import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:rental_car_app/data/car/datasource/car_data_source.dart';
import 'package:rental_car_app/data/car/repositories/car_repository_impl.dart';
import 'package:rental_car_app/domain/car/repositories/car_repository.dart';
import 'package:rental_car_app/domain/car/use_cases/get_cars.dart';
import 'package:rental_car_app/presentation/bloc.dart';
import 'package:rental_car_app/presentation/car_list/bloc/car_list_bloc.dart';

final di = GetIt.instance;

Future<void> init() async {
  // blocs
  di.registerFactory<CarListBloc>(() => CarListBloc(getCarsUseCase: di()));
  di.registerFactory<LoginBloc>(() => LoginBloc());

  // firebase instance
  di.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);

  // use cases
  di.registerLazySingleton<GetCarsUseCase>(() => GetCarsUseCase(di()));

  // repositories
  di.registerLazySingleton<CarRepository>(() => CarRepositoryImpl(di()));

  // data sources
  di.registerLazySingleton<CarDataSource>(
      () => CarDataSourceImpl(firestore: di()));
}
