import 'package:flutter/material.dart';
import 'package:parking/model/ticket.dart';

class TicketCard extends StatelessWidget {
  final Ticket ticket;
  const TicketCard({
    super.key,
    required this.ticket,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Image.asset(
                'assets/motorcycle.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
