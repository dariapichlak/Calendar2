import 'package:calendar2/calendar/calendar_page.dart';
import 'package:calendar2/event/event_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => EventProvider(),
        child: const MaterialApp(
          title: 'Calendar',
          home: CalendarPage(),
        ),
      );
 
}
