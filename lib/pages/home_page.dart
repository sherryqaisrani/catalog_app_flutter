import 'dart:convert';
import 'package:catalog_flutter_application/models/catalog.dart';
import 'package:catalog_flutter_application/widgets/catalogItem.dart';
import 'package:catalog_flutter_application/widgets/drawer.dart';
import 'package:catalog_flutter_application/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "package:velocity_x/velocity_x.dart";

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
      backgroundColor: CustomeThemes.creemcolor,
      body: Container(
        padding: Vx.m32,
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CatalogHeader(),
            if (ItemModel.item != null && ItemModel.item.isNotEmpty)
              CatalogList().expand()
            else
              CircularProgressIndicator().py16(),
          ]),
        ),
      ),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      'Catalog App'.text.bold.xl5.color(CustomeThemes.darkbluishColor).make(),
      'Tranding Product'.text.bold.xl2.make()
    ]);
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: ItemModel.item.length,
        itemBuilder: (context, index) {
          final catalog = ItemModel.item[index];
          return CatalogItem(catalog: catalog);
        });
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        CatalogImage(image: catalog.image),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            catalog.name.text.lg
                .color(CustomeThemes.darkbluishColor)
                .bold
                .make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.xl.bold.make(),
                ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                CustomeThemes.darkbluishColor),
                            shape: MaterialStateProperty.all(StadiumBorder())),
                        onPressed: () {},
                        child: "Buy".text.make())
                    .pOnly(right: 8.0)
              ],
            )
          ],
        ))
      ],
    )).white.rounded.square(150).make().py16();
  }
}

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .color(CustomeThemes.creemcolor)
        .make()
        .w32(context)
        .p16();
  }
}
