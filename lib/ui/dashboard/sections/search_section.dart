import 'package:flutter/material.dart';
import '../../../custom_widgets/custom_box.dart';

class SearchSection extends StatelessWidget {
  final TextEditingController controller;
  final Function(String)? onChanged;

  const SearchSection({
    super.key,
    required this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBox(
      backgroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: "Search",
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 12),
        ),
      ),
    );
  }
}
