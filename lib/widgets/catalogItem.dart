import 'package:catalog_flutter_application/models/catalog.dart';
import 'package:flutter/material.dart';

class CatalogItem extends StatelessWidget {
  final Items items;

  CatalogItem({Key? key, required this.items})
      : assert(items != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: ListTile(
          leading: Image.network(items.imgeUrl),
          title: Text(items.name),
          subtitle: Text(items.desc),
          trailing: Text(
            "\$${items.price}",
            style: const TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ),
      ),
    );
  }
}
