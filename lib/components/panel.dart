import 'package:flutter/material.dart';
import 'package:nutrikid_app/shared/variant.dart';

final panelShadow = [
  BoxShadow(color: Colors.black.withAlpha(40), blurRadius: 1.5),
];

class Panel extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  const Panel({super.key, required this.child, this.color, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.all(18),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color ?? VariantColor.card,
        borderRadius: BorderRadius.circular(10),
        boxShadow: panelShadow,
      ),
      child: child,
    );
  }
}
