import 'package:flutter/material.dart';

double screenSize(BuildContext context, String type, double hisVar) {
  final screenSize = MediaQuery.of(context).size;
  final padding = MediaQuery.of(context).viewPadding;

  final double adjustedHeight = screenSize.height - padding.top - padding.bottom;
  final double adjustedWidth = screenSize.width - padding.left - padding.right;

  if (type == 'height') {
    return adjustedHeight * hisVar;
  } else if (type == 'width') {
    return adjustedWidth * hisVar;
  } else {
    return 0;
  }
}
