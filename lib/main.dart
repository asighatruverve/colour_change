import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorChangeScreen(),
    );
  }
}

class ColorChangeScreen extends StatefulWidget {
  const ColorChangeScreen({super.key});

  @override
  State<ColorChangeScreen> createState() => _ColorChangeScreenState();
}

class _ColorChangeScreenState extends State<ColorChangeScreen> {
  // Initial background color
  Color _backgroundColor = Colors.blueGrey;

  // Function to pick a completely random color
  void _changeColor() {
    setState(() {
      _backgroundColor = Color.fromARGB(
        255,
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: const Text('Color Changer App'),
        backgroundColor: Colors.black26,
        elevation: 0,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _changeColor,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              PS C:\Users\WELCOME\StudioProjects\colour_change> git status
          On branch main
          You have unmerged paths.
              (fix conflicts and run "git commit")
            (use "git merge --abort" to abort the merge)

            Unmerged paths:
        (use "git add <file>..." to mark resolution)
          both added:      .gitignore
      both added:      README.md

          no changes added to commit (use "git add" and/or "git commit -a")      textStyle: const TextStyle(fontSize: 20),
          ),
          child: const Text('Change Color!'),
        ),
      ),
    );
  }
}
