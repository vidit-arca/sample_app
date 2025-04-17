import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget child;
  final double? maxWidth;
  final double? minWidth;

  const ResponsiveLayout({
    super.key,
    required this.child,
    this.maxWidth, // Optionally constrain the maximum width
    this.minWidth, // Optionally constrain the minimum width
  });

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Determine the layout based on the screen width
    double layoutWidth = screenWidth;

    if (maxWidth != null && layoutWidth > maxWidth!) {
      layoutWidth = maxWidth!;
    } else if (minWidth != null && layoutWidth < minWidth!) {
      layoutWidth = minWidth!;
    }

    return Center(
      child: Container(
        width: layoutWidth, // Apply the calculated width
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: child,
      ),
    );
  }
}
