import 'package:clock_calendar/view/change_date.dart';
import 'package:clock_calendar/view/change_time.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  final ValueNotifier<TimeOfDay> _timeNotifier = ValueNotifier(TimeOfDay.now());
  final ValueNotifier<DateTime> _dateNotifier = ValueNotifier(DateTime.now());

  LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Time and Date'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChangeTime(timeNotifier: _timeNotifier),
            const SizedBox(height: 20),
            ChangeDate(dateNotifier: _dateNotifier),
          ],
        ),
      ),
    );
  }
}
