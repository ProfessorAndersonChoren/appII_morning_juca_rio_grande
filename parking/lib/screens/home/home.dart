import 'package:flutter/material.dart';
import 'package:parking/model/ticket.dart';
import 'package:parking/model/vacancy.dart';
import 'package:parking/model/vehicle.dart';
import 'package:parking/model/vehicle_type.dart';
import 'package:parking/screens/home/components/ticket_card.dart';
import 'package:parking/screens/home/components/vacancy_component.dart';
import 'package:parking/screens/shared/custom_appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var vacancy = Vacancy(
      number: 1,
      description: 'Vaga 0001',
      vehicleType: VehicleType.motorcycle,
    );
    var vehicle = Vehicle(
      licensePlate: 'IUK-4645',
      brand: 'Yamaha',
      model: 'YBR-125',
      vehicleType: VehicleType.motorcycle,
    );
    var ticket = Ticket(
      id: 1,
      number: 124,
      vacancy: vacancy,
      vehicle: vehicle,
      entryTime: TimeOfDay.now(),
    );

    return Scaffold(
      appBar: customAppBar('Parking Control'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'new_ticket');
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VacancyComponent(
                  number: "16",
                  caption: "Vagas livres",
                ),
                VacancyComponent(
                  number: "4",
                  caption: "Vagas ocupadas",
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => TicketCard(ticket: ticket),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
