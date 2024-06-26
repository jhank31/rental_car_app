part of 'car_list_bloc.dart';

sealed class CarListEvent extends Equatable {
  const CarListEvent();

  @override
  List<Object> get props => [];
}

class LoadListCars extends CarListEvent {}