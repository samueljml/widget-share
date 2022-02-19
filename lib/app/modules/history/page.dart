import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History"),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(40)),
              ),
            ],
          ),
          const SizedBox(height: 15),
          ChoiceChip(
              pressElevation: 0.0,
              selectedColor: Colors.blue,
              backgroundColor: Colors.grey[100],
              label: const Text(
                "6 hours ago",
                style: TextStyle(color: Colors.white),
              ),
              selected: true,
              onSelected: (bool selected) {}),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.delete_outline)),
              const SizedBox(width: 15),
              IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
              const SizedBox(width: 15),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.file_download_outlined)),
            ],
          )
        ],
      ),
    );
  }
}
