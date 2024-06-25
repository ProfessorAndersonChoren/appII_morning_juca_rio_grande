import 'package:parking/model/vehicle_type.dart';

class Vehicle {
  String licensePlate;
  String brand;
  String model;
  VehicleType vehicleType;
  String? color;
  int? yearOfManufactory;
  int? yearOfModel;

  Vehicle({
    required this.licensePlate,
    required this.brand,
    required this.model,
    required this.vehicleType,
    this.color,
    this.yearOfManufactory,
    this.yearOfModel,
  });
}
