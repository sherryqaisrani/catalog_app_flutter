import 'package:catalog_flutter_application/models/catalog.dart';
import 'package:catalog_flutter_application/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailPage extends StatefulWidget {
  final Item catalog;
  DetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState(catalog);
}

class _DetailPageState extends State<DetailPage> {
  final Item catalog;

  _DetailPageState(this.catalog);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.xl4.red800.bold.make(),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(CustomeThemes.darkbluishColor),
                shape: MaterialStateProperty.all(
                  StadiumBorder(),
                ),
              ),
              onPressed: () {},
              child: "Add To Cart".text.make(),
            ).wh(120, 50),
          ],
        ).p32(),
      ),
      backgroundColor: CustomeThemes.creemcolor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30,
                edge: VxEdge.TOP,
                arcType: VxArcType.CONVEY,
                child: Container(
                  width: context.screenWidth,
                  color: Colors.white,
                  child: Column(
                    children: [
                      catalog.name.text.xl4
                          .color(CustomeThemes.darkbluishColor)
                          .bold
                          .make(),
                      catalog.desc.text.xl
                          .textStyle(context.captionStyle)
                          .make(),
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas varius tristique tellus, non aliquet sapien. Nulla fringilla eros quis leo consequat, non faucibus metus luctus. "
                          .text
                          .textStyle(
                            context.captionStyle,
                          )
                          .make(),
                      10.heightBox,
                    ],
                  ).py64(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
