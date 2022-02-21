import 'package:flutter/material.dart';

class NewWidgetFormScreen extends StatelessWidget {
  const NewWidgetFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController widgetName = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("New Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
