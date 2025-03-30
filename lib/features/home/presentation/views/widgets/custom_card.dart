import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final double elevation;
  final EdgeInsets margin;
  final Color? color;

  const CustomCard({
    super.key,
    required this.child,
    this.elevation = 4.0,
    this.margin = const EdgeInsets.all(8.0),
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      margin: margin,
      color: color,
      child: child,
    );
  }
}
