import 'package:flutter/material.dart';
import 'package:shopping_list/models/item.dart';

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/item',
          arguments: item,
        );
      },
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                item.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name, style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Harga: Rp${item.price.toStringAsFixed(0)}'),
                  Text('Stok: ${item.stock}'),
                  RatingRow(rating: item.rating),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RatingRow extends StatelessWidget {
  final double rating;

  const RatingRow({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(rating.floor(), (index) {
          return Icon(Icons.star, color: Colors.amber, size: 18);
        }),
        if (rating % 1 >= 0.5)
          Icon(Icons.star_half, color: Colors.amber, size: 18),
        if (rating < 5)
          ...List.generate(5 - rating.ceil(), (index) {
            return Icon(Icons.star_border, color: Colors.amber, size: 18);
          }),
        SizedBox(width: 4),
        Text('(${rating.toStringAsFixed(1)})'), // Menampilkan jumlah rating
      ],
    );
  }
}
