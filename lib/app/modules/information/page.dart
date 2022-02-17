import 'package:flutter/material.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Information"),
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "How to Share a Widget",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: const [
                    Text(
                        "Step 1. Create a new widget. On the main screen, click the plus button then \"Create a new widget\". Once the widget is created you will be given the Widget ID"),
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
