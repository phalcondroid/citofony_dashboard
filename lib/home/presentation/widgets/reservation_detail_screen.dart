import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ReservationDetailScreen extends StatelessWidget {
  final Map<String, dynamic> data;

  const ReservationDetailScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final DateTime date = data['date'];
    final TimeOfDay time = data['time'];

    return Scaffold(
      appBar: AppBar(title: const Text("Reservation Details")),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.now().subtract(const Duration(days: 365)),
            lastDay: DateTime.now().add(const Duration(days: 365)),
            focusedDay: date,
            selectedDayPredicate: (d) => d == date,
            calendarStyle: const CalendarStyle(
              selectedDecoration: BoxDecoration(
                color: Colors.deepPurple,
                shape: BoxShape.circle,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text("Time: ${time.format(context)}"),
          Text("Service: ${data['service']}"),
        ],
      ),
    );
  }
}
