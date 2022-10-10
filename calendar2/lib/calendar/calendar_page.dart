import 'package:calendar2/event/event_page.dart';
import 'package:calendar2/event/event_provider.dart';
import 'package:calendar2/event/event_tools.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final events = Provider.of<EventProvider>(context).events;
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Kalendarz')),
      ),
      body: SfCalendar(
        view: CalendarView.month,
        monthViewSettings: const MonthViewSettings(showAgenda: true),
        initialSelectedDate: DateTime.now(),
        dataSource: EventDataSource(events),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const EventPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
