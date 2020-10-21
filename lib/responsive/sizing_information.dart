import 'package:flutter/cupertino.dart';
import 'package:responsive_architecture/enums/device_screen_type.dart';

class SizingInformation{

  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation({this.deviceScreenType, this.screenSize, this.localWidgetSize});


  @override
  String toString() {
    return "SizingInformation: deviceScreenType: $deviceScreenType , screenSize: $screenSize , localWidgetSize:$localWidgetSize";
  }

}