import 'package:flutter/material.dart';

final panelShadow = [
  BoxShadow(color: Colors.black.withAlpha(40), blurRadius: 1.5),
];

class Panel extends StatelessWidget {
  final Widget child;

  const Panel({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: panelShadow,
      ),
      child: child,
    );
  }
}
