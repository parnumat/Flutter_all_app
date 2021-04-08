import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:patrick_app/main/main_constants.dart';
import 'package:patrick_app/main/pages/aboutMe/containers/Animated_background.dart';

class ProfileAboutMeHeader extends SliverPersistentHeaderDelegate {
  ProfileAboutMeHeader({
    this.minExtent,
    @required this.maxExtent,
  });
  final double minExtent;
  final double maxExtent;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        AnimatedBackground(),
        Container(
          width: double.infinity,
          height: 225,
          child: AnimatedBackground(),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Image.asset("assets/icons/logo.png")),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: mDefaultPadding * 0.5),
                  child: Text(
                    "Patrink",
                    style: TextStyle(fontSize: mTxextHead),
                  ),
                )
              ],
            ),
          ),
        ),
        // Image.asset(
        //   'assets/ronnie-mayo-361348-unsplash.jpg',
        //   fit: BoxFit.cover,
        // ),
        // Container(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       colors: [Colors.transparent, Colors.black54],
        //       stops: [0.5, 1.0],
        //       begin: Alignment.topCenter,
        //       end: Alignment.bottomCenter,
        //       tileMode: TileMode.repeated,
        //     ),
        //   ),
        // ),
        // Positioned(
        //   left: 16.0,
        //   right: 16.0,
        //   bottom: 16.0,
        //   child: Text(
        //     'Lorem ipsum',
        //     style: TextStyle(
        //       fontSize: 32.0,
        //       color: Colors.white.withOpacity(titleOpacity(shrinkOffset)),
        //     ),
        //   ),
        // ),
      ],
    );
  }

  double titleOpacity(double shrinkOffset) {
    // simple formula: fade out text as soon as shrinkOffset > 0
    return 1.0 - max(0.0, shrinkOffset) / maxExtent;
    // more complex formula: starts fading out text when shrinkOffset > minExtent
    //return 1.0 - max(0.0, (shrinkOffset - minExtent)) / (maxExtent - minExtent);
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  FloatingHeaderSnapConfiguration get snapConfiguration => null;
}
