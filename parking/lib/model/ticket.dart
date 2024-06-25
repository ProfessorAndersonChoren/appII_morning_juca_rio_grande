// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:parking/model/vacancy.dart';
import 'package:parking/model/vehicle.dart';

class Ticket {
  int? id;
  int number;
  Vacancy vacancy;
  Vehicle vehicle;
  TimeOfDay entryTime;
  TimeOfDay? departureTime;
  double? amount;

  Ticket({
    this.id,
    required this.number,
    required this.vacancy,
    required this.vehicle,
    required this.entryTime,
    this.departureTime,
    this.amount,
  }) {
    if (vacancy.vehicleType != vehicle.vehicleType) {
      throw ArgumentError('Veículo incompatível com a vaga!!!');
    }
  }
}
