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
    final callIDController = TextEditingController(text: 'Test Call ID');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zego Calling'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Center(
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
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return CallPage(callID: callIDController.text);
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
