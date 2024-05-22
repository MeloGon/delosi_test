import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:test_dev_delosi/src/core/app_component.config.dart';
import 'package:test_dev_delosi/src/utils/app_navigator.dart';

final GetIt locator = GetIt.instance;

@InjectableInit(preferRelativeImports: false, initializerName: r'$appInitGetIt')
void configureLocator() => locator.$appInitGetIt();

final dialogService = locator<DialogService>();
final appNavigator = locator<AppNavigator>();

Future init() async {
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
}
