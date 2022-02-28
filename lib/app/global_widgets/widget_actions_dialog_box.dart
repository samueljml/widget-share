import 'package:flutter/material.dart';
import 'package:widget_share/app/routes/routes.dart';
import 'package:widget_share/app/utils/constants.dart';

class WidgetActionsDialogBox extends StatelessWidget {
  const WidgetActionsDialogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    contentBox(context) {
      return Stack(
        children: <Widget>[
          Container(
            height: 230,
            padding: const EdgeInsets.all(25),
            width: MediaQuery.of(context).size.width - 16,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(Constants.padding),
                boxShadow: const [
                  BoxShadow(color: Colors.black54, blurRadius: 50),
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed(Routes.newWidget),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.add,
                          color: Colors.blue,
                          size: 35,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Create a new widget",
                          style: TextStyle(
                              fontSize: 21,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.people,
                        color: Colors.blue,
                        size: 35,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Connect a frind's widget",
                        style: TextStyle(
                            fontSize: 21,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      );
    }

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      insetPadding:
          const EdgeInsets.symmetric(horizontal: Constants.minPadding),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }
}
