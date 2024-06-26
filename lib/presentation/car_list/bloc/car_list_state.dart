part of 'car_list_bloc.dart';

sealed class CarListState extends Equatable {
  const CarListState();

  @override
  List<Object> get props => [];
}

final class CarsListLoading extends CarListState {}

final class CarsListLoaded extends CarListState {
  final List<Car> cars;

  const CarsListLoaded({required this.cars});

  @override
  List<Object> get props => [cars];
}

final class CarsError extends CarListState {
  final String message;

  const CarsError(this.message);

  @override
  List<Object> get props => [message];
}
