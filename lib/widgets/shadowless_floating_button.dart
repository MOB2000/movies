import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ShadowlessFloatingButton extends StatelessWidget {
  final iconData;
  final onPressed;
  final backgroundColor;

  const ShadowlessFloatingButton({
    super.key,
    required this.iconData,
    required this.onPressed,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: FloatingActionButton(
        onPressed: null,
        disabledElevation: 0,
        backgroundColor: backgroundColor,
        child: Icon(
          iconData,
          size: 22.sp,
          color: Colors.white,
        ),
      ),
    );
  }
}
