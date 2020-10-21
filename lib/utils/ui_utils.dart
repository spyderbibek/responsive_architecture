
import 'package:flutter/cupertino.dart';
import 'package:responsive_architecture/enums/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery){
  //Fixed device width (changes with orientation)
  double deviceWidth=mediaQuery.size.shortestSide;
  //Breakpoints
  if(deviceWidth>950){
    return DeviceScreenType.Desktop;
  }

  if(deviceWidth>600){
    return DeviceScreenType.Tablet;
  }

  return DeviceScreenType.Mobile;
}