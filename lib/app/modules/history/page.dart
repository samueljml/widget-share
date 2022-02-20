import 'package:flutter/material.dart';
import 'package:widget_share/app/global_widgets/history_item.dart';
import 'package:widget_share/app/modules/history/item.dart';
import 'package:widget_share/app/utils/constants.dart';

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
        padding: const EdgeInsets.symmetric(
            vertical: 15, horizontal: Constants.minPadding),
        child: Wrap(
          runSpacing: 15,
          children: [
            Item(
              HistoryItem(
                Image.asset("assets/images/perfil.jpg", fit: BoxFit.fill),
                DateTime(2020),
              ),
            ),
            Item(
              HistoryItem(
                Image.asset(
                  "assets/images/perfil.jpg",
                ),
                DateTime(2020),
              ),
            ),
            Item(
              HistoryItem(
                Image.asset(
                  "assets/images/perfil.jpg",
                ),
                DateTime(2020),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
