import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:test_dev_delosi/src/constants/app_strings.dart';
import 'package:test_dev_delosi/src/core/app_component.dart';
import 'package:test_dev_delosi/src/modules/matrix/home/models/matrix.model.dart';
import 'package:test_dev_delosi/src/utils/dialog_enums.dart';

class MatrixViewModel extends BaseViewModel {
  final MatrixModel _matrixModel = MatrixModel();

  final TextEditingController _inputController = TextEditingController();
  TextEditingController get inputController => _inputController;

  List<List<int>>? _rotatedMatrix;
  List<List<int>>? get rotatedMatrix => _rotatedMatrix;

  void validateInput() {
    if (_inputController.text.isNotEmpty) {
      try {
        final matrix = _parseMatrixInput(_inputController.text);
        _rotateMatrix(matrix);
      } catch (e) {
        _handleInputErrorDialog(e.toString());
      }
    } else {
      _handleInputErrorDialog(AppStrings.inputIsEmptyError);
    }
  }

  Future<void> _handleInputErrorDialog(String error) async {
    await dialogService.showDialog(
      title: AppStrings.somethingHappenedError,
      description: error,
      buttonTitle: AppStrings.ok,
    );
  }

  void _rotateMatrix(List<List<int>> matrix) {
    _rotatedMatrix = _matrixModel.rotateCounterClockwise(matrix);
    notifyListeners();
  }

  List<String> _cleanSplitString(String input) {
    final result = input
        .replaceAll(' ', '')
        .replaceAll('],[', '|')
        .replaceAll(RegExp(r'[\[\]]'), '')
        .split('|');

    return result;
  }

  List<List<int>> _parseMatrixInput(String value) {
    final rows = _cleanSplitString(value);
    final matrix =
        rows.map((row) => row.split(',').map(int.parse).toList()).toList();
    int size = matrix.length;
    if (matrix.any((row) => row.length != size)) {
      throw Exception(AppStrings.rowAndColumnsError);
    }
    return matrix;
  }
}
