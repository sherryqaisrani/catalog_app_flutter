import 'package:catalog_flutter_application/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      'Catalog App'.text.bold.xl5.color(Theme.of(context).accentColor).make(),
      'Tranding Product'
          .text
          .bold
          .xl2
          .color(Theme.of(context).accentColor)
          .make()
    ]);
  }
}
