import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../models.dart';

class CustomSliverAppBar extends StatelessWidget {
  //final String posterUrl;
  final List<String> genres;
  CustomSliverAppBar({this.genres});

  // Setar como pinned: true ao dar o scroll to top e pinned:false no scroll bottom
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 550.0,
      floating: false,
      pinned: false,
      snap: false,
      backgroundColor: Color(0xff0f0f0f),
      flexibleSpace: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xff0f0f0f),
        ),
        child: FlexibleSpaceBar(
          centerTitle: false,
          background: Image.asset(
            "assets/images/goldin_hero.png",
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      bottom: PreferredSize(
        // preferredSize: const Size.fromHeight(0.0),
        preferredSize: Size(0, kToolbarHeight),
        child: Transform.translate(
          offset: const Offset(0, 0),
          child: Column(
            children: <Widget>[
              Text(
                'Goldin ' +
                    String.fromCharCode($middot) +
                    ' Premier Auctions ',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    color: Colors.transparent,
                    onPressed: () {},
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 24,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Add Channel',
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 11,
                            // fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  RaisedButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(3.0),
                        side: BorderSide(color: Colors.white)),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.play_arrow,
                          color: Colors.black87,
                          size: 28,
                        ),
                        Text(
                          "View Auction",
                          style: TextStyle(
                            fontFamily: 'Confortaa',
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FlatButton(
                    color: Colors.transparent,
                    onPressed: () {},
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.info_outline,
                          color: Colors.white,
                          size: 24,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Learn More',
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 11,
                            // fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        SizedBox(
          width: 10,
        ),
        Image.asset(
          'assets/images/netflix_icon.png',
          width: 48,
          height: 48,
        ),
        Spacer(),
        FlatButton(
          child: Text(
            "Auctions",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          onPressed: () {},
        ),
        FlatButton(
          child: Text(
            "Popular",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          onPressed: () {},
        ),
        FlatButton(
          child: Text(
            "Your Channels",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}