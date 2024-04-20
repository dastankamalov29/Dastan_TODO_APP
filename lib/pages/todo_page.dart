import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  //Text Edditing controller
  TextEditingController myController = TextEditingController();

  //greet user method

  void greetUser() {
    String userName = myController.text;

    setState(() {
      greetingMessage = 'Hello,$userName';
    });
  }

  //Greeting message variables
  String greetingMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Greet user message
              Text(greetingMessage),

              //textfield
              TextField(
                controller: myController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Type your name... '),
              ),
              //Button
              ElevatedButton(
                onPressed: greetUser,
                child: const Text('Tap'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
