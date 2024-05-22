import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.content, {
    Key? key,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 14,
    this.color = Colors.black,
    this.textAlign,
    this.maxLines,
    this.decoration = TextDecoration.none,
    this.fontFamily = 'Montserrat',
    this.overflow = TextOverflow.ellipsis,
    this.style,
    this.italic = false,
  }) : super(key: key);

  final String content;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextDecoration? decoration;
  final String? fontFamily;
  final TextOverflow overflow;
  final TextStyle? style;
  final bool italic;

  @override
  Widget build(BuildContext context) => Text(
        content,
        textAlign: textAlign,
        maxLines: maxLines,
        style: style ??
            TextStyle(
              overflow: TextOverflow.ellipsis,
              fontFamily: fontFamily,
              fontWeight: fontWeight,
              fontSize: fontSize,
              color: color,
              decoration: decoration,
              fontStyle: italic ? FontStyle.italic : FontStyle.normal,
            ),
      );
}
