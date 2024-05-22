import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:stacked_services/stacked_services.dart';
import 'package:test_dev_delosi/src/core/app_component.dart';
import 'package:test_dev_delosi/src/extensions/widget.extensions.dart';
import 'package:test_dev_delosi/src/modules/matrix/home/view_model/matrix.view_model.dart';

class HandleErrorDialog extends StackedView<MatrixViewModel> {
  final Function(DialogResponse) completer;
  final String? description;

  const HandleErrorDialog(
      {super.key, required this.completer, this.description});

  @override
  Widget builder(
      BuildContext context, MatrixViewModel viewModel, Widget? child) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Dialog(
        insetPadding: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: ListView(
          shrinkWrap: true,
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: const Icon(Icons.close).onClick(() {
                  appNavigator.back();
                })),
            Text(description ?? '')
          ],
        ).box().withPadding(
              const EdgeInsets.all(25.0),
            ),
      ).withPadding(const EdgeInsets.all(25.0)),
    );
  }

  @override
  MatrixViewModel viewModelBuilder(BuildContext context) => MatrixViewModel();
}
