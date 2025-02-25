import 'package:flutter/material.dart';

class BrandNameRow extends StatelessWidget {
  const BrandNameRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        children: [
          Text(
            "Popular Brands",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          Spacer(), // This takes up the remaining space instead of SizedBox
          Text(
            "See all",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Icon(Icons.arrow_forward_ios, size: 10),
        ],
      ),
    );
  }
}
