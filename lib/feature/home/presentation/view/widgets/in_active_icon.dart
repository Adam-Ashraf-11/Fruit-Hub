import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class InActiveIcon extends StatelessWidget {
  const InActiveIcon({super.key, required this.icon});
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(child: SvgPicture.asset(icon , height: 24));
  }
}