import 'package:flutter/material.dart';

import 'kmp_greeting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KMP + Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const KmpGreetingScreen(),
    );
  }
}

class KmpGreetingScreen extends StatefulWidget {
  const KmpGreetingScreen({super.key});

  @override
  State<KmpGreetingScreen> createState() => _KmpGreetingScreenState();
}

class _KmpGreetingScreenState extends State<KmpGreetingScreen> {
  String _greet = "";

  @override
  void initState() {
    super.initState();
    _getGreeting();
  }

  void _getGreeting() async {
    final greet = await KmpGreeting.getGreeting();
    setState(() {
      _greet = greet;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter + Kmp"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _greet,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
