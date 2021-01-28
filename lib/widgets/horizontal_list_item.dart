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
         //   Image.network(link, fit: BoxFit.scaleDown),
            CachedNetworkImage(
         //     boxfit: BoxFit.scaleDown,
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
                color: Colors.grey[700],
                elevation: 4,
                child: Column(
                  children: [
                    SizedBox(
                      height: 120,
                      child:
                    CachedNetworkImage(
                      imageUrl:
                          link,
                      width: defaultWidth,
                    )),
                    Card(
                      color: Colors.orange,
                      child:
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                    Text("Now Open"),
                    Text("Ends Feb 6")

                        ],),
                      ))
                  ],
                ))
          ],
        );
        break;
    }
  }
}
