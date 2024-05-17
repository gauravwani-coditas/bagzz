import 'package:bagzz/features/home/presentation/widgets/bag_desc_tab_bar_view.dart';
import 'package:bagzz/features/home/presentation/widgets/bag_heading.dart';
import 'package:flutter/material.dart';

Widget getBagDescription() {
  return Padding(
    padding: EdgeInsets.all(12),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [getBagHeading(), getBagDescTabBarView()],
    ),
  );
}
