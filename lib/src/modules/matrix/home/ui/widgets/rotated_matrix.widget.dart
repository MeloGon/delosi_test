import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:test_dev_delosi/src/extensions/widget.extensions.dart';
import 'package:test_dev_delosi/src/modules/matrix/home/view_model/matrix.view_model.dart';

class RotatedMatrixWidget extends ViewModelWidget<MatrixViewModel> {
  const RotatedMatrixWidget({super.key});

  @override
  Widget build(BuildContext context, MatrixViewModel viewModel) => Column(
        children: viewModel.rotatedMatrix!.map((row) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: row.map((value) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepPurple),
                ),
                child: Text(
                  value.toString(),
                  style: const TextStyle(fontSize: 18),
                ).withPadding(
                  const EdgeInsets.all(40),
                ),
              );
            }).toList(),
          );
        }).toList(),
      );
}
