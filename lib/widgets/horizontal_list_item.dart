import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HorizontalListItem extends StatelessWidget {
  final String link;
  final int type;
  final double defaultWidth = 110;

  HorizontalListItem({@required final this.link, this.type});
  @override
  Widget build(BuildContext context) {
    switch (type) {
      case 1:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CachedNetworkImage(
              imageUrl: link,
              width: defaultWidth,
            ),
          ],
        );
        break;
      case 0:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Card(
                color: Colors.black,
                elevation: 4,
                child: Column(
                  children: [
                    CachedNetworkImage(
                      imageUrl:
                          link,
                      width: defaultWidth,
                    ),
                    Card(
                      color: Colors.orange,
                      child:
                      Column(children: [
                    Text("Now Open"),
                    Text("Ends Feb 6")

                      ],))
                  ],
                ))
          ],
        );
        break;
    }
  }
}
