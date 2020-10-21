import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/orientation_layout.dart';
import 'package:responsive_architecture/responsive/responsive_builder.dart';
import 'package:responsive_architecture/responsive/screen_type_layout.dart';
import 'package:responsive_architecture/views/home/home_view_tablet.dart';

import 'home_view_mobile.dart';



class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayout(
            portrait: HomeMobilePortrait(),
            landscape: HomeMobileLandscape(),
          ),
          tablet: HomeViewTablet(),
        );
      },
    );
  }
}
