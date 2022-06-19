import 'package:catalog_flutter_application/pages/detail_page.dart';
import 'package:catalog_flutter_application/widgets/home_page_widgets/catalog_image.dart';
import 'package:catalog_flutter_application/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: ItemModel.item.length,
      itemBuilder: (context, index) {
        final catalog = ItemModel.item[index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(catalog: catalog),
            ),
          ),
          child: CatalogItem(catalog: catalog),
        );
      },
    );
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
        Hero(
          tag: Key(
            catalog.id.toString(),
          ),
          child: CatalogImage(image: catalog.image),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              catalog.name.text.lg
                  .color(Theme.of(context).accentColor)
                  .bold
                  .make(),
              catalog.desc.text
                  .textStyle(context.captionStyle)
                  .color(Theme.of(context).accentColor)
                  .make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.xl.bold.make(),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(context.theme.buttonColor),
                      shape: MaterialStateProperty.all(
                        const StadiumBorder(),
                      ),
                    ),
                    onPressed: () {},
                    child: "Add To Cart".text.make(),
                  ).pOnly(right: 8.0)
                ],
              ),
            ],
          ),
        )
      ],
    )).color(context.theme.cardColor).rounded.square(150).make().py16();
  }
}
