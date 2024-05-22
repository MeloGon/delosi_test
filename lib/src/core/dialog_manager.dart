import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:test_dev_delosi/src/core/app_component.dart';
import 'package:test_dev_delosi/src/global_widgets/dialogs/handle_error_dialog.dart';
import 'package:test_dev_delosi/src/utils/dialog_enums.dart';

void setupDialogUi() {
  final dialogService = locator<DialogService>();
  final Map<
      dynamic,
      Widget Function(BuildContext, DialogRequest<dynamic>,
          void Function(DialogResponse<dynamic>))> builders = {
    DialogType.custom: (context, DialogRequest request, completer) =>
        HandleErrorDialog(completer: completer),
  };
  dialogService.registerCustomDialogBuilders(builders);
}
