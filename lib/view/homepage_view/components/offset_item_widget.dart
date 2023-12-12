import 'package:flutter/material.dart';

class OffsetItemWidget extends StatelessWidget {
  final Widget child;
  final double offset;

  const OffsetItemWidget({Key? key, required this.child, required this.offset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0.0, offset),
      child: child,
    );
  }
}