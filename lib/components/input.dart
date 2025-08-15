import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nutrikid_app/shared/variant.dart';

class Input extends StatefulWidget {
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
    this.keyboardType,
    this.maxLines,
    this.minLines,
    this.readOnly = false,
    this.onTap,
  });

  final String? placeholder;
  final String? variant;
  final bool? isPassword;
  final TextEditingController? controller;
  final String? initialValue;
  final void Function(String)? onChanged;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final int? maxLines;
  final int? minLines;
  final bool readOnly;
  final void Function()? onTap;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  bool showPassword = false;

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

    Widget? suffix;

    if (widget.isPassword == true) {
      suffix = Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                showPassword = !showPassword;
              });
            },
            icon: Icon(showPassword ? LucideIcons.eye : LucideIcons.eyeOff),
          ),
        ],
      );
    }

    return InputDecoration(
      hintText: widget.placeholder,
      border: border,
      enabledBorder: enabledBorder,
      focusedBorder: focusedBorder,
      errorBorder: errorBorder,
      focusedErrorBorder: errorBorder,
      isDense: true,
      suffixIcon: suffix ?? widget.suffixIcon,
      prefixIcon: widget.prefixIcon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.maxLines ?? 1,
      minLines: widget.minLines,
      keyboardType: widget.keyboardType,
      decoration: inputDecoration,
      obscureText: widget.isPassword == true ? !showPassword : false,
      controller: widget.controller,
      onChanged: widget.onChanged,
      initialValue: widget.initialValue,
      readOnly: widget.readOnly,
      onTap: widget.onTap,
    );
  }
}
