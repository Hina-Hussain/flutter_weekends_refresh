import 'package:flutter/material.dart';
import 'package:flutter_30_days_challenge/models/catalog_model.dart';

class ItemWidget extends StatelessWidget {
  final ItemModel item;
  const ItemWidget({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.imageUrl),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
        textScaleFactor: 1.2,
        style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
