import 'package:flutter/material.dart';
import 'package:widget_share/app/utils/constants.dart';

class NewWidgetFormScreen extends StatelessWidget {
  const NewWidgetFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController widgetName = TextEditingController();
    final mediaQuery = MediaQuery.of(context);
    final freeWidth =
        mediaQuery.size.width - Constants.newWidgetFormPadding * 2;
    const double spaceBetweenElements = 15;

    return Scaffold(
      appBar: AppBar(
        title: const Text("New Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Constants.newWidgetFormPadding),
        child: Wrap(
          runSpacing: spaceBetweenElements,
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
                  width: freeWidth,
                  height: mediaQuery.size.width * 0.95,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Container(
                    color: Colors.white,
                    width: freeWidth / 2 - spaceBetweenElements / 2,
                    height: freeWidth / 2 - spaceBetweenElements / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.photo,
                          size: 60,
                        ),
                        SizedBox(height: spaceBetweenElements),
                        Text(
                          "Gallery",
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: spaceBetweenElements),
                InkWell(
                  child: Container(
                    color: Colors.white,
                    width: freeWidth / 2 - spaceBetweenElements / 2,
                    height: freeWidth / 2 - spaceBetweenElements / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.camera_alt,
                          size: 60,
                        ),
                        SizedBox(height: spaceBetweenElements),
                        Text(
                          "Camera",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              child: Container(
                color: Colors.white,
                width: freeWidth,
                padding: const EdgeInsets.all(10),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.send,
                      size: 30,
                    ),
                    Text(
                      "Send",
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
