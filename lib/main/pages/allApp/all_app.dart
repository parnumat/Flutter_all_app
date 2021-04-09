import 'package:flutter/material.dart';
import 'package:patrick_app/main/pages/allApp/models/app-menu.dart';

import '../../main_constants.dart';
import '../../main_constants.dart';
import '../../main_constants.dart';
import '../../main_constants.dart';

class AllApp extends StatelessWidget {
  const AllApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<AppMenu> apps = [
      AppMenu(
          appName: "Clone spotify",
          imgUrl: "assets/icons/githubs.png",
          projectPath: "https://github.com/parnumat/Flutter_all_app"),
      AppMenu(
          appName: "Order66",
          imgUrl: "assets/icons/linkedin.png",
          projectPath: "https://github.com/parnumat/Flutter_all_app"),
      AppMenu(
          appName: "Shop app",
          imgUrl: "assets/icons/facebook.png",
          projectPath: "https://github.com/parnumat/Flutter_all_app"),
      AppMenu(
          appName: "Zero dawn",
          imgUrl: "assets/icons/logo.png",
          projectPath: "https://github.com/parnumat/Flutter_all_app")
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: apps.length,
            itemBuilder: (BuildContext context, int index) => ListTile(
              title: CardApp(app: apps[index]),
            ),
          ),
        ),
      ),
    );
  }
}

class CardApp extends StatelessWidget {
  const CardApp({
    Key key,
    @required this.app,
  }) : super(key: key);

  final AppMenu app;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(app.appName);
      },
      child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: mDefaultPadding * 0.5,
              vertical: mDefaultPadding * 0.2),
          color: mPrimaryColor,
          child: Row(
            children: [
              Image.asset(
                app.imgUrl,
                width: 50,
                height: 50,
              ),
              SizedBox(
                width: mDefaultPadding * 0.5,
              ),
              Text(app.appName)
            ],
          )),
    );
  }
}
