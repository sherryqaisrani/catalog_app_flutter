import 'package:catalog_flutter_application/models/catalog.dart';
import 'package:catalog_flutter_application/widgets/catalogItem.dart';
import 'package:catalog_flutter_application/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  var dummyList = List.generate(10, (index) => ItemModel.product[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog Application'),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return CatalogItem(
            items: dummyList[index],
          );
        },
      ),
      drawer: MDrawer(),
    );
  }
}
