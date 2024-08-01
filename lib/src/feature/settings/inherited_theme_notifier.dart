

import 'package:api_car_hometask/src/feature/settings/theme_controller.dart';
import 'package:flutter/cupertino.dart';

@immutable

class InheritedThemeNotifier extends InheritedNotifier<ThemeController>{
  const InheritedThemeNotifier({
    required final ThemeController themeController,
    required super.child,
    super.key,
})  : super(
    notifier: themeController,
  );

  static ThemeController? maybeOf(BuildContext context, {bool listen = true}){
    if(listen){
      return context.dependOnInheritedWidgetOfExactType<InheritedThemeNotifier>()?.notifier;
      }else{
      final inhW = context.getElementForInheritedWidgetOfExactType<InheritedThemeNotifier>()?.widget;
      return inhW is InheritedThemeNotifier ? inhW.notifier : null;
    }
  }
}