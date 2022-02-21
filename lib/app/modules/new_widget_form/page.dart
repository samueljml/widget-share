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
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              child: TextFormField(
                controller: widgetName,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText: "Give your widget a name",
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty || value.trim().isEmpty) {
                    return "Plese enter a name";
                  }
                  return null;
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
