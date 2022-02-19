import 'package:flutter/material.dart';
import 'package:widget_share/app/modules/history/item.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 15),
        child: Wrap(
          runSpacing: 15,
          children: const [
            Item(),
            Item(),
            Item(),
          ],
        ),
      ),
    );
  }
}
