import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}



class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
            children: [
              const Spacer(),
              const Text("Stateless widget :", style: TextStyle(color: Colors.green, fontSize: 30),),
              Container(
                height: 30,
              ),
              const GreetingWidget(greetingMessage: "Hello"),
              const Spacer(),
              const Text("Stateful widget : ", style: TextStyle(color: Colors.green, fontSize: 30),),
              Container(
                height: 30,
              ),
              const MyButton(),
              const Spacer(),
            ],
        ),
      ),
    );
  }
}

class GreetingWidget extends StatelessWidget {
  final String greetingMessage;

  const GreetingWidget({super.key, required this.greetingMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          "greeting message is \"$greetingMessage\"",
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 20.0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButton();
}

class _MyButton extends State<MyButton> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed: _incrementCounter,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
            ),
            child: Text("Push me to increment!", style: TextStyle(color: Colors.white),
            ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            'You have pushed the button this many times: $_counter',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
        ),
        Container(height: 30,),
      ],
    );
  }
}

