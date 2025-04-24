import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback onPressed;
  final Color? buttonBackgroundColor;
  final Gradient? gradient;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final ShapeBorder? shape;
  final double? buttonHeight;
  final double? buttonWidth;
  final AlignmentGeometry? gradientBegin;
  final AlignmentGeometry? gradientEnd;
  final TextStyle? textStyle;

  CustomButton({
    super.key,
    required this.buttonTitle,
    required this.onPressed,
    this.buttonBackgroundColor,
    this.gradient,
    this.textStyle,
    this.padding = const EdgeInsets.symmetric(horizontal: 20.0,vertical: 12.0),
    required this.borderRadius,
    this.shape,
    this.buttonHeight,
    this.buttonWidth,
    this.gradientBegin,
    this.gradientEnd

  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: borderRadius,
        customBorder: shape,
        child: Ink(
          decoration: BoxDecoration(
            color: buttonBackgroundColor,
            gradient: gradient != null
                ? (gradient is LinearGradient)
                ? LinearGradient(
                colors: gradient!.colors,
              begin:  gradientBegin ?? Alignment.centerLeft,
              end: gradientEnd ?? Alignment.centerRight,
            )
                : gradient: null,
            borderRadius: borderRadius,
            shape:  shape is CircleBorder ? BoxShape.circle : BoxShape.rectangle
        ),
          child: Container(
            height: buttonHeight,
            width: buttonWidth,
            padding: padding,
            alignment: Alignment.center,
            child: Text(
              buttonTitle,
              style: textStyle ?? const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
      ),
      )
    );
  }
}
