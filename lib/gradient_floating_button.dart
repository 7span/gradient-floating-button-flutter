library gradient_floating_button;

import 'package:flutter/material.dart';

class GradientFloatingButton {

  /// withLinerGradient() method will create a linear gradient background to your Floating Action Button
  Widget withLinearGradient(
      {required Function() onTap,
      required Widget iconWidget,
      required List<Color> colors,
      double buttonHeight = 50,
      double buttonWidth = 50,
      BoxShape buttonShape = BoxShape.circle,
      AlignmentGeometry alignmentBegin = Alignment.bottomLeft,
      AlignmentGeometry alignmentEnd = Alignment.topRight,
      List<double>? stops}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
            shape: buttonShape,
            gradient: LinearGradient(
                begin: alignmentBegin,
                end: alignmentEnd,
                stops: stops,
                colors: colors)),
        child: iconWidget,
      ),
    );
  }

  /// withRadialGradient() method will create a radial gradient background to your Floating Action Button
  Widget withRadialGradient(
      {required Function() onTap,
      required Widget iconWidget,
      required List<Color> colors,
      required double radius,
      double buttonHeight = 50,
      double buttonWidth = 50,
      BoxShape buttonShape = BoxShape.circle,
      AlignmentGeometry? focal,
      double focalRadius = 0}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
            shape: buttonShape,
            gradient: RadialGradient(
                radius: radius,
                focal: focal,
                focalRadius: focalRadius,
                colors: colors)),
        child: iconWidget,
      ),
    );
  }
}
