import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  CustomSearchIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 47,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: .05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(onPressed: () {}, icon: Icon(icon, size: 28)),
    );
  }
}
