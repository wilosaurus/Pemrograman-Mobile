import 'package:flutter/material.dart';
import 'package:shopping_list/models/item.dart';
import 'package:shopping_list/widgets/item_card.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      imageUrl: 'https://th.bing.com/th/id/OIP.hmZ-kPkuoLi3CxB8xK6qxAHaHa?rs=1&pid=ImgDetMain',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imageUrl: 'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2019/02/6.-Garam-Cap-Kapal-300x300.jpg',
      stock: 20,
      rating: 4.0,
    ),
    Item(
      name: 'Honey',
      price: 10000,
      imageUrl: 'https://cdn.popbela.com/content-images/post/20190923/untitled-design-3-2a01cd3e7a28aa57005520648785e49b.jpg',
      stock: 15,
      rating: 3.7,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ItemCard(item: item);
          },
        ),
      ),
      footer: FooterWidget(),
    );
  }
}
