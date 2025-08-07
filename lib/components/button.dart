import 'package:flutter/material.dart';
import 'package:nutrikid_app/shared/size-config.dart';
import 'package:nutrikid_app/shared/variant.dart';

class Button extends StatelessWidget {
  Button({
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

  late final finalColor = color ?? VariantColor.primary;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: finalColor,
        foregroundColor:
            finalColor == Colors.white ? Colors.grey.shade900 : Colors.white,
        fixedSize: full ? Size.fromWidth(SizeConfig.screenWidth!) : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
          side:
              finalColor == Colors.white
                  ? BorderSide(color: VariantColor.border)
                  : BorderSide.none,
        ),
        minimumSize: Size(0, 46),
      ),
      child: child,
    );
  }
}
