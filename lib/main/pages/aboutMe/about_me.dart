import 'package:flutter/material.dart';
import 'package:patrick_app/main/pages/aboutMe/containers/abou_me_content.dart';
import 'package:patrick_app/main/pages/aboutMe/containers/profile_about_me_header.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            // pinned: true,
            // floating: true,
            delegate: ProfileAboutMeHeader(
              minExtent: 150.0,
              maxExtent: 250.0,
            ),
          ),
          AboutMeContent(),
        ],
      ),
    );
  }
}
