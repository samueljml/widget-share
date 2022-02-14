import 'package:flutter/material.dart';
import 'package:widget_share/app/modules/information/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.grey,
          ),
          home: const MyHomePage(),
          routes: {"/information": (ctx) => const InformationScreen()}),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Center(
            child: Icon(
              Icons.add,
              size: 25,
              color: Colors.blue,
            ),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
      appBar: AppBar(
        leading: const Icon(Icons.history),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/information");
              },
              icon: const Icon(Icons.info_outline),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: const [
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  "Your Widgets",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(flex: 5, child: SingleChildScrollView()),
          ],
        ),
      ),
    );
  }
}
