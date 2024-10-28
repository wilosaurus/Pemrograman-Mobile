import 'package:flutter/material.dart';
import 'package:shopping_list/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.network(
              itemArgs.imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama: ${itemArgs.name}', style: TextStyle(fontSize: 24)),
                  SizedBox(height: 8),
                  Text('Harga: Rp${itemArgs.price.toStringAsFixed(0)}', style: TextStyle(fontSize: 20)),
                  SizedBox(height: 8),
                  Text('Stok: ${itemArgs.stock}', style: TextStyle(fontSize: 20)),
                  SizedBox(height: 8),
                  RatingRow(rating: itemArgs.rating),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
