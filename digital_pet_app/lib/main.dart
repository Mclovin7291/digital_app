import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Names',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pet Names'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Dogs'),
              Tab(text: 'Cats'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            // Dogs tab content
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Max'),
                  Text('Bella'),
                  Text('Charlie'),
                  Text('Luna'),
                ],
              ),
            ),
            // Cats tab content
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Oliver'),
                  Text('Milo'),
                  Text('Lucy'),
                  Text('Leo'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}