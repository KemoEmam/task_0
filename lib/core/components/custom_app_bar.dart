import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final TextStyle? titleStyle;
  final Widget? leading;
  final Widget? trailing;
  final bool showBackButton;
  final Color backgroundColor;
  final bool isSliver;
  final double expandedHeight;
  final Widget? background;
  final double elevation;
  final Color shadowColor;

  const CustomAppBar({
    super.key,
    required this.title,
    this.titleStyle,
    this.leading,
    this.trailing,
    this.showBackButton = true,
    this.backgroundColor = Colors.white,
    this.isSliver = false, // Default: Normal AppBar
    this.expandedHeight = 200.0,
    this.background,
    this.elevation = 1, // Default elevation
    this.shadowColor = Colors.yellow, // Default shadow color
  });

  @override
  Widget build(BuildContext context) {
    return isSliver ? _buildSliverAppBar(context) : _buildNormalAppBar(context);
  }

  /// Builds a SliverAppBar with an optional background
  Widget _buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: expandedHeight,
      floating: false,
      pinned: true,
      backgroundColor: backgroundColor,
      elevation: elevation,
      shadowColor: shadowColor,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          title,
          style: titleStyle ?? const TextStyle(color: Colors.white),
        ),
        background: background ?? _defaultSliverBackground(),
      ),
      leading: leading ?? (showBackButton ? _defaultBackButton(context) : null),
      actions: [if (trailing != null) trailing!],
    );
  }

  /// Builds a normal AppBar with a shadow
  AppBar _buildNormalAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: true,
      leading: leading ?? (showBackButton ? _defaultBackButton(context) : null),
      title: Text(
        title,
        style: titleStyle ?? const TextStyle(color: Colors.black),
      ),
      actions: [if (trailing != null) trailing!],
      elevation: elevation, // Shadow effect
      shadowColor: shadowColor,
    );
  }

  /// Default back button
  Widget _defaultBackButton(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pop(context),
      icon: const Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black),
    );
  }

  /// Default background for SliverAppBar
  Widget _defaultSliverBackground() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.blue],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: elevation, // Adjust shadow intensity
            spreadRadius: 1,
            offset: const Offset(0, 2), // Drop shadow effect
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
