import 'package:flipkart_ui/product_card.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  final List<String> randomImages = [
    "https://cdn.shopify.com/s/files/1/1859/8979/files/image17_3cfc7cfb-8215-40b7-a297-db7285d5375b.png?v=1610384290", // Red image
    "https://thumbs.dreamstime.com/b/overflowing-mineral-water-transparent-glass-drops-bu-overflowing-mineral-water-transparent-glass-drops-119980903.jpg", // Green image
    "https://www.shutterstock.com/image-vector/skin-moisture-product-water-cosmetics-260nw-2508224915.jpg", // Blue image
    "https://images.pexels.com/photos/4041392/pexels-photo-4041392.jpeg?cs=srgb&dl=pexels-karolina-grabowska-4041392.jpg&fm=jpg", // Yellow image
    "https://images.pexels.com/photos/8101511/pexels-photo-8101511.jpeg?cs=srgb&dl=pexels-polina-kovaleva-8101511.jpg&fm=jpg", // Magenta image
    "https://burst.shopifycdn.com/photos/wrist-watches.jpg?width=1000&format=pjpg&exif=0&iptc=0", // Cyan image
  ];

  ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 6, // Number of products
        itemBuilder: (context, index) {
          final imageUrl = (randomImages..shuffle()).first; // Pick random image
          return ProductCard(
            imageUrl: imageUrl,
            name: "Product $index",
            price: "\$${(index + 1) * 20}",
          );
        },
      ),
    );
  }
}
