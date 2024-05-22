import 'package:flutter/cupertino.dart';
import 'package:test_dev_delosi/src/modules/matrix/home/ui/screens/matrix.screen.dart';

class Routes {
  static const matrixScreen = '/matrixScreen';

  static final routes = <String, WidgetBuilder>{
    matrixScreen: (context) => const MatrixScreen()
  };
}
