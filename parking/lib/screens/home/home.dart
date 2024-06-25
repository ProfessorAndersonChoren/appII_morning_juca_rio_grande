import 'package:flutter/material.dart';
import 'package:parking/screens/home/components/vacancy_component.dart';
import 'package:parking/screens/shared/custom_appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Parking Control'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
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
          ],
        ),
      ),
    );
  }
}
