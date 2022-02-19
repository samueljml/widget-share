import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widget_share/app/modules/history/page.dart';
import 'package:widget_share/app/modules/information/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(primarySwatch: Colors.grey);
    return MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: theme.copyWith(
              appBarTheme: const AppBarTheme(
                elevation: 0,
                systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: Color.fromRGBO(245, 245, 245, 1),
                    statusBarBrightness: Brightness.light,
                    statusBarIconBrightness: Brightness.dark),
              ),
              scaffoldBackgroundColor: const Color.fromRGBO(245, 245, 245, 1),
              textTheme: const TextTheme(
                  bodyText1: TextStyle(color: Colors.black, fontSize: 14),
                  headline6: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              colorScheme: theme.colorScheme.copyWith(
                  primary: const Color.fromRGBO(245, 245, 245, 1),
                  secondary: const Color.fromRGBO(245, 245, 245, 1),
                  onBackground: Colors.black)),
          darkTheme: ThemeData.dark().copyWith(
              appBarTheme: const AppBarTheme(
                elevation: 440,
                backgroundColor: Color.fromRGBO(7, 7, 7, 1),
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: Color.fromRGBO(7, 7, 7, 1),
                ),
              ),
              scaffoldBackgroundColor: const Color.fromRGBO(7, 7, 7, 1),
              colorScheme: ThemeData.dark().colorScheme.copyWith(
                    secondary: const Color.fromRGBO(31, 31, 31, 1),
                  )),
          home: const MyHomePage(),
          routes: {
            "/information": (ctx) => const InformationScreen(),
            "/history": (ctx) => const HistoryScreen(),
          }),
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
        title: const Text("Your Widgets"),
        leading: IconButton(
            onPressed: () => Navigator.of(context).pushNamed("/history"),
            icon: const Icon(Icons.history)),
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
            Expanded(child: SingleChildScrollView()),
          ],
        ),
      ),
    );
  }
}
