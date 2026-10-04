import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/note_form_screen.dart';
import 'screens/saved_notes_screen.dart';
import 'screens/api_data_screen.dart';
import 'screens/device_feature_screen.dart';

void main() {
  runApp(const TaskManagerApp());
}

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Notes Manager',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/add-note': (context) => const NoteFormScreen(),
        '/saved-notes': (context) => const SavedNotesScreen(),
        '/api-data': (context) => const ApiDataScreen(),
        '/device-feature': (context) =>
            const DeviceFeatureScreen(),
      },
    );
  }
}
