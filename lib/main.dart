import 'package:flutter/material.dart';
import 'task_list_screen.dart';

void main() => runApp(TaskManagerApp());

class TaskManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple.shade700,
        scaffoldBackgroundColor: const Color.fromARGB(255, 12, 11, 14),
        colorScheme: ColorScheme.dark(
          primary: Colors.deepPurple.shade800,
          secondary: const Color.fromARGB(255, 138, 43, 226), // Violet color
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: const Color.fromARGB(255, 187, 134, 252)),
          bodyText2: TextStyle(color: const Color.fromARGB(255, 179, 136, 255)),
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(color: const Color.fromARGB(255, 170, 0, 255)),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: const Color.fromARGB(255, 145, 61, 255)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: const Color.fromARGB(255, 160, 80, 255)),
          ),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor:
              MaterialStateProperty.all(const Color.fromARGB(255, 139, 0, 255)),
        ),
        iconTheme: IconThemeData(
          color: Colors.purpleAccent,
        ),
        dropdownMenuTheme: DropdownMenuThemeData(
          textStyle: TextStyle(color: Colors.deepPurpleAccent),
        ),
      ),
      home: TaskListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}