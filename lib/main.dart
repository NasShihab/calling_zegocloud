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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zego Calling'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Chip(
                label: const Text(
                  'Jack Muller',
                  style: TextStyle(fontSize: 25),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                backgroundColor: Colors.orange,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: const Text(
                'Call',
                style: TextStyle(fontSize: 20),
              ),
              icon: const Icon(Icons.call),
            ),
          ],
        ),
      ),
    );
  }
}
