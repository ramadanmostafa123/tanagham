import 'package:flutter/material.dart';
import 'package:tanagham/core/theming/app_style.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: Appstyle.styleRegular15,
          contentPadding: const EdgeInsets.all(12),
          border: InputBorder.none,
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xFF677294),
          ),
          suffixIcon: const Icon(
            Icons.close,
            color: Color(0xFF677294),
          ),
        ),
      ),
    );
  }
}
