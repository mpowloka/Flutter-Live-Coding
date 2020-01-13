import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsRow extends StatelessWidget {
  final String imageUrl;
  final String upperText;
  final String bottomText;

  const DetailsRow({Key key, this.imageUrl, this.upperText, this.bottomText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(imageUrl),
            ),
            Container(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(upperText),
                Container(height: 20),
                Text(bottomText),
              ],
            )
          ],
        ),
      ),
    );
  }
}
