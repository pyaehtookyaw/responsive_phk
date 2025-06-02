import 'package:flutter/material.dart';
import 'package:responsive_phk/constants/breakpoints.dart';

class ResponsiveAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ResponsiveAppBar({
    super.key,
    this.leading,
    this.centerTitle,
    this.title,
    this.backgroundColor,
    this.foregroundColor,
    this.mobileActions = const [],
    this.desktopActions = const [],
  });
  final Widget? leading;
  final bool? centerTitle;
  final String? title;
  final Color? backgroundColor;
  final Color? foregroundColor;

  /// Actions to show on smaller screens (e.g., mobile)
  final List<Widget>? mobileActions;

  /// Actions to show on larger screens (e.g., tablet/desktop)
  final List<Widget>? desktopActions;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < Breakpoint.tablet;

    return AppBar(
      leading: leading,
      centerTitle: centerTitle,
      title: Text(title ?? ''),
      backgroundColor: backgroundColor ?? Colors.black87,
      foregroundColor: foregroundColor ?? Colors.white,
      actions: isMobile ? mobileActions : desktopActions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
