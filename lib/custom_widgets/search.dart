import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  final TextEditingController controller;

  const SearchBox({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 0.3,
            blurRadius: 0,
            offset: Offset(2, 3),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.search, color: Colors.black54),
          hintText: "Search",
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 16),
        ),
      ),
    );
  }
}
