import 'package:get/get.dart';
import 'package:widget_share/app/modules/history/page.dart';
import 'package:widget_share/app/modules/information/page.dart';
import 'package:widget_share/app/modules/new_widget_form/page.dart';
import 'package:widget_share/app/modules/setting/page.dart';
import 'package:widget_share/app/routes/Routes.dart';
import 'package:widget_share/main.dart';

class Pages {
  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage(
        name: '/',
        page: () => const MyApp(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
        title: "Root",
        children: [
          GetPage(
            name: Routes.information,
            page: () => const InformationScreen(),
          ),
          GetPage(
            name: Routes.history,
            page: () => const HistoryScreen(),
          ),
          GetPage(
            name: Routes.newWidget,
            page: () => const NewWidgetFormScreen(),
          ),
          GetPage(
            name: Routes.settings,
            page: () => const SettingsScreen(),
          ),
        ]),
  ];
}
