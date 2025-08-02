import 'package:flutter/material.dart';
import 'package:nutrikid_app/shared/size-config.dart';
import 'package:nutrikid_app/shared/variant.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    this.color,
    required this.child,
    required this.onPressed,
  });

  final Color? color;
  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: color ?? VariantColor.primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        fixedSize: Size.fromWidth(SizeConfig.screenHeight!),
      ),
      child: child,
    );
  }
}
