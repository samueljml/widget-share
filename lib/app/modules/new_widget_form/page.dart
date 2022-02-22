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
        padding: const EdgeInsets.all(15),
        child: Wrap(
          runSpacing: 15,
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              child: TextFormField(
                controller: widgetName,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Give your widget a name",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty || value.trim().isEmpty) {
                    return "Plese enter a name";
                  }
                  return null;
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 30,
                  height: MediaQuery.of(context).size.width * 0.95,
                  color: Colors.white,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: const Padding(
                        padding: EdgeInsets.all(30),
                        child: Center(
                          child: Text(
                            "No image yet. Take a picture white the camera or add an image from your gallery.",
                            textAlign: TextAlign.center,
                            style: TextStyle(),
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
