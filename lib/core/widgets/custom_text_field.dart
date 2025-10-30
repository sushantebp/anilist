import 'package:anilist/core/core.dart';
import 'package:flutter/material.dart';

/// Minimal customizable TextFormField
class CustomTextField extends StatefulWidget {
  final String? placeholder;
  final String? label;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool enabled;
  final String? Function(String?)? validator;
  final Widget? prefix;
  final Widget? suffix;
  final bool isPassword;
  final Function(String)? onChanged;
  final String? initialValue;

  const CustomTextField({
    super.key,
    this.placeholder,
    this.label,
    this.controller,
    this.enabled = true,
    this.validator,
    this.prefix,
    this.suffix,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.onChanged,
    this.initialValue,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late final ValueNotifier<bool> _obsecureTextNotifier;

  @override
  void initState() {
    _obsecureTextNotifier = ValueNotifier<bool>(widget.isPassword);
    super.initState();
  }

  @override
  void dispose() {
    _obsecureTextNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSize.radiusLarge),
    );

    return ValueListenableBuilder<bool>(
      valueListenable: _obsecureTextNotifier,
      builder: (context, obsecureText, child) {
        // Create the suffix widget according to the rules above
        Widget? suffixWidget;
        if (widget.isPassword) {
          // Password field: show eye toggle if no custom suffix
          suffixWidget =
              widget.suffix ??
              IconButton(
                onPressed: () {
                  _obsecureTextNotifier.value = !_obsecureTextNotifier.value;
                },
                icon: Icon(
                  obsecureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              );
        } else {
          // Non-password field: use custom suffix if provided
          suffixWidget = widget.suffix;
        }

        return TextFormField(
          initialValue: widget.initialValue,
          controller: widget.controller,
          enabled: widget.enabled,
          validator: widget.validator,
          keyboardType: widget.keyboardType,
          obscureText: widget.isPassword ? obsecureText : false,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            filled: true,
            labelText: widget.label,
            hintText: widget.placeholder,
            prefixIcon: widget.prefix,
            suffixIcon: suffixWidget,
            border: border,
            enabledBorder: border,
            focusedBorder: border,
            errorBorder: border,
          ),
        );
      },
    );
  }
}
