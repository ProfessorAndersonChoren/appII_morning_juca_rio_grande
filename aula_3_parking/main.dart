import 'Vehicle.dart';

void main() {
  Vehicle vehicle =
      Vehicle(
        model:'F-Type Supercharged Coupe 3.0 V6',
        licensePlate: 'IDL-5391',
        brand: 'Jaguar',
        // Opcional
        color: 'Cinza',
        yearModel: 2015,
        yearOfManufacture: 2015
      );

  print('Meu ${vehicle.brand} ${vehicle.model} é da cor ${vehicle.color}');
}
