import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rental_car_app/domain/car/entity/car.dart';
import 'package:rental_car_app/domain/car/use_cases/get_cars.dart';

part 'car_list_event.dart';
part 'car_list_state.dart';

class CarListBloc extends Bloc<CarListEvent, CarListState> {
  final GetCarsUseCase getCarsUseCase;
  CarListBloc({required this.getCarsUseCase}) : super(CarsListLoading()) {
    on<LoadListCars>(_onLoadCarsHandler);
  }

  void _onLoadCarsHandler(
      LoadListCars event, Emitter<CarListState> emit) async {
    emit(CarsListLoading());
    try {
      final result = await getCarsUseCase.execute();
      log('message: ${result.toString()}');
      result.fold(
        (failure) => emit(CarsError(failure.message)),
        (cars) => emit(CarsListLoaded(cars: cars)),
      );
    } catch (e) {
      emit(CarsError(e.toString()));
    }
  }
}
