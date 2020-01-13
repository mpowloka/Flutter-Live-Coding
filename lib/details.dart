import 'package:flutter/material.dart';
import 'package:flutter_app4/detailsRow.dart';

import 'imte.dart';

class ImteDetails extends StatelessWidget {
  final Imte imte;

  const ImteDetails({Key key, this.imte}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(imte.name)),
      body: Column(
        children: <Widget>[
          DetailsRow(
            imageUrl:
            "https://5.imimg.com/data5/YQ/UL/MY-3997168/steel-shovel-500x500.jpg",
            upperText: imte.name,
            bottomText: imte.desc,
          )
        ],
      ),
    );
  }
}
