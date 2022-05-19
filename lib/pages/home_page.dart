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
  var dummyList = List.generate(10, (index) => ItemModel.product[0]);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  void loadData() async {
    final cataData = await rootBundle.loadString('assets/files/catalog.json');
    final data = jsonDecode(cataData);
    final productsData = data["product"];
    print(productsData);
  }

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
