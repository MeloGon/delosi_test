import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:test_dev_delosi/src/constants/app_strings.dart';
import 'package:test_dev_delosi/src/extensions/widget.extensions.dart';
import 'package:test_dev_delosi/src/global_widgets/app_button.widget.dart';
import 'package:test_dev_delosi/src/modules/matrix/home/ui/widgets/rotated_matrix.widget.dart';
import 'package:test_dev_delosi/src/modules/matrix/home/view_model/matrix.view_model.dart';

class MatrixScreen extends StackedView<MatrixViewModel> {
  const MatrixScreen({super.key});

  @override
  Widget builder(
          BuildContext context, MatrixViewModel viewModel, Widget? child) =>
      ViewModelBuilder<MatrixViewModel>.reactive(
        viewModelBuilder: () => MatrixViewModel(),
        builder: (context, viewModel, child) => Scaffold(
          appBar: AppBar(
            title: const Text(AppStrings.testDelosi),
            centerTitle: true,
          ),
          body: Column(
            children: [
              TextField(
                controller: viewModel.inputController,
                decoration: const InputDecoration(
                  labelText: AppStrings.enterMatrix,
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              AppButton(
                AppStrings.rotate,
                onPressed: viewModel.validateInput,
                textColor: Colors.deepPurple,
                borderColor: Colors.deepPurple,
              ),
              const SizedBox(height: 16),
              if (viewModel.rotatedMatrix != null) const RotatedMatrixWidget()
            ],
          )
              .withPadding(
                const EdgeInsets.all(16.0),
              )
              .toScroll(),
        ),
      );

  @override
  MatrixViewModel viewModelBuilder(BuildContext context) => MatrixViewModel();
}
