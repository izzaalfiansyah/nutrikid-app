import 'package:flutter/material.dart';
import 'package:nutrikid_app/shared/size-config.dart';
import 'package:nutrikid_app/shared/variant.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    this.color,
    required this.onPressed,
    this.full = false,
    required this.child,
  });

  final Color? color;
  final bool full;
  final Widget child;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: color ?? VariantColor.primary,
        foregroundColor: Colors.white,
        fixedSize: full ? Size.fromWidth(SizeConfig.screenWidth!) : null,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        minimumSize: Size(0, 46),
      ),
      child: child,
    );
  }
}
