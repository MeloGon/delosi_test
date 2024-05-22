import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Padding withPadding(EdgeInsets padding) => Padding(
        padding: padding,
        child: this,
      );

  SingleChildScrollView toScroll() => SingleChildScrollView(
        child: this,
      );

  SizedBox box({double? width, double? height}) =>
      SizedBox(width: width, height: height, child: this);

  Widget onClick(void Function() onClick) => InkWell(
        onTap: onClick,
        child: this,
      );
}
