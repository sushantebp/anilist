import 'package:flutter/material.dart';

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
  final bool isRounded;
  final Function(String)? onFieldSubmitted;
  final bool showClearButtonOnTyping;
  final int maxLines;

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
    this.isRounded = true,
    this.onFieldSubmitted,
    this.showClearButtonOnTyping = false,
    this.maxLines = 1,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late final ValueNotifier<bool> _obscureTextNotifier;
  late final ValueNotifier<bool> _showClearNotifier;
  late final TextEditingController _controller;

  TextEditingController get _effectiveController =>
      widget.controller ?? _controller;

  @override
  void initState() {
    super.initState();
    _obscureTextNotifier = ValueNotifier(widget.isPassword);
    _showClearNotifier = ValueNotifier(false);
    _controller =
        widget.controller ?? TextEditingController(text: widget.initialValue);

    if (widget.showClearButtonOnTyping) {
      _effectiveController.addListener(() {
        _showClearNotifier.value = _effectiveController.text.isNotEmpty;
      });
    }
  }

  @override
  void dispose() {
    _obscureTextNotifier.dispose();
    _showClearNotifier.dispose();
    if (widget.controller == null) _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final borderRadius = widget.isRounded ? 24.0 : 8.0;

    OutlineInputBorder buildBorder(Color color) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: BorderSide(color: color, width: 1.5),
    );

    return ValueListenableBuilder<bool>(
      valueListenable: _obscureTextNotifier,
      builder: (context, obscureText, _) {
        Widget? suffixWidget;

        // Password toggle
        if (widget.isPassword) {
          suffixWidget =
              widget.suffix ??
              IconButton(
                icon: Icon(
                  obscureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                ),
                onPressed: () => _obscureTextNotifier.value = !obscureText,
              );
        }
        // Clear button
        else if (widget.showClearButtonOnTyping) {
          suffixWidget = ValueListenableBuilder<bool>(
            valueListenable: _showClearNotifier,
            builder: (context, showClear, __) {
              if (showClear) {
                return IconButton(
                  icon: Icon(
                    Icons.clear,
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                  onPressed: () {
                    _effectiveController.clear();
                    _showClearNotifier.value = false;
                    widget.onChanged?.call('');
                  },
                );
              } else {
                return widget.suffix ?? const SizedBox.shrink();
              }
            },
          );
        } else {
          suffixWidget = widget.suffix;
        }

        return TextFormField(
          controller: _effectiveController,
          initialValue: widget.controller == null ? widget.initialValue : null,
          enabled: widget.enabled,
          validator: widget.validator,
          keyboardType: widget.keyboardType,
          obscureText: widget.isPassword ? obscureText : false,
          onChanged: widget.onChanged,
          onFieldSubmitted: widget.onFieldSubmitted,
          maxLines: widget.maxLines,
          decoration: InputDecoration(
            filled: true,
            fillColor: theme.colorScheme.surfaceContainerHighest,
            labelText: widget.label,
            hintText: widget.placeholder,
            prefixIcon: widget.prefix,
            suffixIcon: suffixWidget,
            border: buildBorder(
              theme.colorScheme.onSurface.withValues(alpha: 0.3),
            ),
            enabledBorder: buildBorder(
              theme.colorScheme.onSurface.withValues(alpha: 0.3),
            ),
            focusedBorder: buildBorder(theme.colorScheme.primary),
            errorBorder: buildBorder(theme.colorScheme.error),
          ),
        );
      },
    );
  }
}
