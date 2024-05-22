// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stacked_services/stacked_services.dart' as _i4;
import 'package:test_dev_delosi/src/helpers/helper_module.dart' as _i5;
import 'package:test_dev_delosi/src/utils/app_navigator.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt $appInitGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final helperModuleStacked = _$HelperModuleStacked();
    gh.lazySingleton<_i3.AppNavigator>(() => helperModuleStacked.appNavigator);
    gh.lazySingleton<_i4.DialogService>(
        () => helperModuleStacked.dialogService);
    return this;
  }
}

class _$HelperModuleStacked extends _i5.HelperModuleStacked {
  @override
  _i3.AppNavigator get appNavigator => _i3.AppNavigator();

  @override
  _i4.DialogService get dialogService => _i4.DialogService();
}
