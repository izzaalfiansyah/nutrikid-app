import 'package:flutter/material.dart';
import 'package:nutrikid_app/shared/variant.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
    this.placeholder,
    this.variant = "outline",
    this.isPassword,
    this.controller,
    this.initialValue,
    this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
  });

  final String? placeholder;
  final String? variant;
  final bool? isPassword;
  final TextEditingController? controller;
  final String? initialValue;
  final void Function(String)? onChanged;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  InputDecoration get inputDecoration {
    final borderRadius = BorderRadius.circular(10);
    var border = OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(width: 1, color: VariantColor.border),
    );

    var enabledBorder = border.copyWith(
      borderSide: BorderSide(width: 1, color: VariantColor.border),
    );
    var focusedBorder = border.copyWith(
      borderSide: BorderSide(color: VariantColor.primary, width: 1.5),
    );
    var errorBorder = border.copyWith(
      borderSide: BorderSide(color: VariantColor.destructive, width: 1.5),
    );

    return InputDecoration(
      hintText: placeholder,
      border: border,
      enabledBorder: enabledBorder,
      focusedBorder: focusedBorder,
      errorBorder: errorBorder,
      focusedErrorBorder: errorBorder,
      isDense: true,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: inputDecoration,
      obscureText: isPassword ?? false,
      controller: controller,
      onChanged: onChanged,
      initialValue: initialValue,
    );
  }
}
