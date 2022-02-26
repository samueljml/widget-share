import 'package:flutter/material.dart';
import 'package:widget_share/app/routes/Routes.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Information"),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.settings);
                },
                icon: const Icon(Icons.settings))
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "How to Share a Widget",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 21),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Column(
                  children: [
                    Text(
                      "Step 1. Create a new widget. On the main screen, click the plus button then \"Create a new widget\". Once the widget is created you will be given the Widget ID\n\nStep 2. Send the Widget ID to your friend.\n\nStep 3. Your friend shoud add the Widget ID to their app. On the main screen, click the plus button then \"Add a friend's widget\".\n\nStep 4. That's it! You can now both send pictures to the same widget.",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
