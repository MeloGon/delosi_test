class MatrixModel {
  List<List<int>> rotateCounterClockwise(List<List<int>> matrix) {
    int size = matrix.length;

    List<List<int>> rotatedMatrix = createEmptyMatrix(size);

    for (int row = 0; row < size; row++) {
      for (int col = 0; col < size; col++) {
        rotatedMatrix[size - col - 1][row] = matrix[row][col];
      }
    }
    return rotatedMatrix;
  }

  List<List<int>> createEmptyMatrix(int size) {
    return List.generate(size, (_) => List<int>.filled(size, 0));
  }
}
