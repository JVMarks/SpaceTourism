import 'package:flutter/material.dart';

class BackIconButton extends StatelessWidget {
  const BackIconButton(
      {Key? key,
      required this.borderColor,
      required this.borderRadius,
      required this.borderWidth,
      required this.buttonSize,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  final double borderRadius;
  final double buttonSize;
  final Color borderColor;
  final double borderWidth;
  final Widget icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) => Material(
        borderRadius:
            borderRadius != null ? BorderRadius.circular(borderRadius) : null,
        color: Colors.transparent,
        clipBehavior: Clip.antiAlias,
        child: Ink(
          width: buttonSize,
          height: buttonSize,
          decoration: BoxDecoration(
            border: Border.all(
              color: borderColor ?? Colors.transparent,
              width: borderWidth ?? 0,
            ),
            borderRadius: borderRadius != null
                ? BorderRadius.circular(borderRadius)
                : null,
          ),
          child: IconButton(
            icon: icon,
            onPressed: onPressed,
            splashRadius: buttonSize,
          ),
        ),
      );
}