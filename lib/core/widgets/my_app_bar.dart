import 'package:anilist/core/core.dart';
import 'package:flutter/material.dart';

/// A minimal custom appbar widget
///
/// This widget implements [PreferredSizeWidget] to specify its height as the standard
/// toolbar height.
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool allowBack;
  final bool centerTitle;
  final List<Widget>? actions;
  final Widget? leading;
  final VoidCallback? onBackPressed;
  final Color? bgColor;
  const MyAppBar({
    super.key,
    this.title,
    this.allowBack = false,
    this.centerTitle = false,
    this.actions,
    this.leading,
    this.onBackPressed,
    this.bgColor,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgColor ?? context.colorScheme.surface,
      title: title != null ? Text(title!) : null,
      centerTitle: centerTitle,
      actions: actions,
      automaticallyImplyLeading: allowBack,
      leading: allowBack
          ? (leading ??
                IconButton(
                  onPressed: onBackPressed ?? () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.arrow_back),
                ))
          : null,
    );
  }
}
