import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          "https://resize.indiatvnews.com/en/resize/newbucket/360_-/2022/09/flipkart-banner-1663763349.jpg",
          fit: BoxFit.cover,
          width: double.infinity,
          height: 150,
        ),
      ),
    );
  }
}
