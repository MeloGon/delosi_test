import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:test_dev_delosi/src/utils/app_navigator.dart';

@module
abstract class HelperModuleStacked {
  @lazySingleton
  DialogService get dialogService;

  @lazySingleton
  AppNavigator get appNavigator;
}
