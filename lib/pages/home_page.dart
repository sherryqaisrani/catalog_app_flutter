import 'dart:convert';
import 'package:catalog_flutter_application/models/catalog.dart';
import 'package:catalog_flutter_application/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "package:velocity_x/velocity_x.dart";

import '../widgets/home_page_widgets/catalog_header.dart';
import '../widgets/home_page_widgets/catalog_list.dart';

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
    await Future.delayed(const Duration(seconds: 5));
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
      backgroundColor: CustomeThemes.creemcolor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomeThemes.darkbluishColor,
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/cartPage');
        },
      ),
      body: Container(
        padding: Vx.m32,
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const CatalogHeader(),
            if (ItemModel.item != null && ItemModel.item.isNotEmpty)
              const CatalogList().py16().expand()
            else
              const CircularProgressIndicator().centered().expand(),
          ]),
        ),
      ),
    );
  }
}
