import 'package:calling_zegocloud/call_page.dart';
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
    final userIDController = TextEditingController();
    final callIDController = TextEditingController(text: '1');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zego Calling'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Chip(
                label: TextFormField(
                  decoration: const InputDecoration(hintText: 'Put User ID'),
                  controller: userIDController,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                backgroundColor: Colors.teal,
              ),
            ),
            Center(
              child: Chip(
                label: TextFormField(
                  controller: callIDController,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                backgroundColor: Colors.teal,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CallPage(
                    callID: '1',
                    userID: userIDController.text,
                  );
                }));
              },
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
