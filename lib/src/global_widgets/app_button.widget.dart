import 'package:flutter/material.dart';
import 'package:test_dev_delosi/src/global_widgets/app_text.widget.dart';

class AppButton extends StatelessWidget {
  const AppButton(this.content,
      {Key? key,
      this.backgroundColor = Colors.black,
      this.textColor = Colors.white,
      this.width = double.maxFinite,
      this.height = 56,
      this.borderRadius = 8,
      this.elevation = 0,
      this.onPressed,
      this.fontSize = 18,
      this.iconSeparation = 8,
      this.fontWeight = FontWeight.normal,
      this.prefixIcon,
      this.suffixIcon,
      this.gradient,
      this.enabled = true,
      this.borderColor = Colors.black,
      this.borderWidth = 1,
      this.splashColor,
      this.fontFamily,
      this.maxLines,
      this.textAlign,
      this.backgroundColorOnDisable})
      : super(key: key);

  final String content;
  final Color backgroundColor;
  final Color textColor;
  final double width;
  final double height;
  final double borderRadius;
  final double borderWidth;
  final double elevation;
  final Function()? onPressed;
  final double fontSize;
  final FontWeight fontWeight;
  final double iconSeparation;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Gradient? gradient;
  final bool enabled;
  final Color borderColor;
  final Color? splashColor;
  final String? fontFamily;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? backgroundColorOnDisable;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      child: ElevatedButton(
        onPressed: enabled ? onPressed : null,
        style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          mouseCursor: MaterialStateProperty.all(SystemMouseCursors.click),
          textStyle: MaterialStateTextStyle.resolveWith(
            (states) => TextStyle(
              fontFamily: fontFamily,
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.all(0),
          ),
          overlayColor: splashColor != null
              ? MaterialStateProperty.all<Color>(splashColor!)
              : null,
          elevation: MaterialStateProperty.all<double>(elevation),
          fixedSize: MaterialStateProperty.all<Size>(
            Size(width, height),
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (prefixIcon != null) ...[
              prefixIcon!,
              SizedBox(
                width: iconSeparation,
              ),
            ],
            Flexible(
              child: AppText(
                content,
                color: (enabled && onPressed != null) ? textColor : Colors.grey,
                fontSize: fontSize,
                maxLines: maxLines,
                textAlign: textAlign,
              ),
            ),
            if (suffixIcon != null) ...[
              SizedBox(
                width: iconSeparation,
              ),
              suffixIcon!,
            ],
          ],
        ),
      ),
    );
  }
}
