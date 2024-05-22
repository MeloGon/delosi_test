import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:test_dev_delosi/src/core/app_component.dart';
import 'package:test_dev_delosi/src/core/dialog_manager.dart';
import 'package:test_dev_delosi/src/modules/matrix/home/ui/screens/matrix.screen.dart';

void main() {
  configureLocator();
  setupDialogUi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MatrixScreen(),
      navigatorKey: StackedService.navigatorKey,
    );
  }
}
