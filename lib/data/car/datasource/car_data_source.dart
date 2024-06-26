import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rental_car_app/data/car/models/car_model.dart';

abstract class CarDataSource {
  Future<List<CarModel>> fetchCars();
}

class CarDataSourceImpl extends CarDataSource {
  final FirebaseFirestore _firestore;

  CarDataSourceImpl({required FirebaseFirestore firestore})
      : _firestore = firestore;

  @override
  Future<List<CarModel>> fetchCars() async {
    var snapshot = await _firestore.collection('cars').get();
    if (snapshot.docs.isEmpty) {
      throw Exception('No data found');
    } else {
      return snapshot.docs.map((doc) => CarModel.fromJson(doc.data())).toList();
    }
  }
}
