import 'dart:convert';
import 'package:catalog_flutter_application/models/catalog.dart';
import 'package:catalog_flutter_application/widgets/catalogItem.dart';
import 'package:catalog_flutter_application/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  void loadData() async {
    await Future.delayed(Duration(seconds: 5));
    final jsonData = await rootBundle.loadString('assets/files/catalog.json');
    final data = jsonDecode(jsonData);
    final productsData = data['product'];
    ItemModel.item =
        List.from(productsData).map((e) => Item.fromJson(e)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog Application'),
      ),
      body: (ItemModel.item.length != null && ItemModel.item.isNotEmpty)
          ? ListView.builder(
              itemCount: ItemModel.item.length,
              itemBuilder: (context, index) {
                return CatalogItem(
                  item: ItemModel.item[index],
                );
              },
            )
          : Center(child: CircularProgressIndicator()),
      drawer: MDrawer(),
    );
  }
}
