import 'package:flutter/material.dart';

class IndicatorRow extends StatelessWidget {
  final int active;

  const IndicatorRow({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate( 3,
            (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: index == active
                ? const Color(0xFF6C63FF)
                : const Color(0xFFD5D5D5),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
