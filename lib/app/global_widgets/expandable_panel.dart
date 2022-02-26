import 'package:flutter/material.dart';

class ExpandablePanelItem {
  final bool isExpanded;
  final Function(bool) setIsExpanded;
  final Widget body;
  final Widget header;

  ExpandablePanelItem(
      {required this.header,
      required this.body,
      required this.isExpanded,
      required this.setIsExpanded});
}

class ExpandablePanelComponent extends StatelessWidget {
  const ExpandablePanelComponent({Key? key, required this.options})
      : super(key: key);

  final List<ExpandablePanelItem> options;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        options[index].setIsExpanded(!isExpanded);
      },
      expandedHeaderPadding: const EdgeInsets.all(0),
      children: options
          .map(
            (option) => ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: option.header,
              ),
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: option.body,
              ),
              isExpanded: option.isExpanded,
            ),
          )
          .toList(),
    );
  }
}
