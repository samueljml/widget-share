import 'package:flutter/material.dart';
import 'package:widget_share/app/global_widgets/history_item.dart';

class Item extends StatelessWidget {
  final HistoryItem item;

  const Item(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - 8,
              height: MediaQuery.of(context).size.width * 0.95,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50), child: item.image),
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
    );
  }
}
