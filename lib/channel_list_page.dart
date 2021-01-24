import 'package:flutter/material.dart';

import 'widgets/custom_sliver_app.dart';
import 'widgets/horizontal_list.dart';

class ChannelListPage extends StatefulWidget {
  final ScrollController scrollController;

  ChannelListPage({this.scrollController});

  @override
  _ChannelListPageState createState() => _ChannelListPageState();
}

class _ChannelListPageState extends State<ChannelListPage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                CustomSliverAppBar(
                ),
              ];
            },
            body: Container(
              color: Color(0xff0f0f0f),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
SizedBox(
                              width: double.infinity,
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                  ),
                                  Text(
                                    'Current Auctions',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
SizedBox(
                              height: 200.0,
                              child: HorizontalList(
                                type: 0,
                                posterUrls:
                                    [
                                      "https://www.auctionreport.com/wp-content/uploads/2018/07/goldinauctions.png",
                                      "https://yt3.ggpht.com/ytc/AAUvwnjxhS2HePLHURnkf4N148cNTQn9DuTs0yH_fK665w=s88-c-k-c0x00ffffff-no-rj",
                                      "https://pbs.twimg.com/profile_images/963498799560769536/UGHosu11_400x400.jpg",
                                      "https://pbs.twimg.com/media/EnIiTi6XMAYOpCP?format=png&name=small",
                                      "https://joriwhitepr.co.uk/wp-content/uploads/2015/02/rm-auctions.jpg",
                                    ],
                              ),
                            ),


                            SizedBox(
                              width: double.infinity,
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                  ),
                                  Text(
                                    'Top Cards',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
SizedBox(
                              height: 200.0,
                              child: HorizontalList(
                                type: 1,
                                posterUrls:
                                    [
                                      "https://goldinauctions.com/ItemImages/000072/72848a_lg.jpeg",
                                      "https://goldinauctions.com/ItemImages/000071/71021a_lg.jpeg",
                                      "https://goldinauctions.com/ItemImages/000073/73048a_lg.jpeg",
                                      "https://goldinauctions.com/ItemImages/000073/73525a_lg.jpeg",
                                      "https://goldinauctions.com/ItemImages/000073/73486c_lg.jpeg",
                                      "https://goldinauctions.com/ItemImages/000073/73250a_lg.jpeg"
                                    ],
                              ),
                            ),


SizedBox(
                              width: double.infinity,
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                  ),
                                  Text(
                                    'Personalites',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
SizedBox(
                              height: 200.0,
                              child: HorizontalList(
                                type: 1,
                                posterUrls:
                                    [
                                      "https://goldinauctions.com/ItemImages/000069/69403b_lg.jpeg",
                                      "https://media.npr.org/assets/img/2020/06/29/steve-aoki-1-credit-brian-ziff_rs_wide-44e4bedf2208fae1ad841317a7612e2b2bf63588-s800-c85.jpg",
                                      "https://cdn.vox-cdn.com/thumbor/MhC7iz0laQdZry12xPvlmbIyl2A=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/16257292/bills.jpg",
                                      "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5cfe6e6c4c687b0008593078%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D526%26cropX2%3D2241%26cropY1%3D121%26cropY2%3D1835",
                                      "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/stan-lee-arrives-at-the-premiere-of-disney-and-marvels-news-photo-950501274-1542049801.jpg",
                                      "https://upload.wikimedia.org/wikipedia/commons/f/f9/Keith_Olbermann_-_small.jpg"
                                    ],
                              ),
                            ),                            

SizedBox(
                              width: double.infinity,
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                  ),
                                  Text(
                                    'Top Channels',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
SizedBox(
                              height: 200.0,
                              child: HorizontalList(
                                type: 1,
                                posterUrls:
                                    [
                                      "https://www.thesprucecrafts.com/thmb/tDEBWDGrETy9t6C6rXo_yNqMJk0=/2667x2000/smart/filters:no_upscale()/US-Type-Coins-Major-56a1794e5f9b58b7d0bfa597.jpg",
                                      "https://images.psacard.com/s3/cu-psa/cardfacts/1909-1911-t206-white-border-honus-wagner-81601.jpg?h=1000&format=png&s.roundcorners=10",
                                      "https://www.abqjournal.com/wp-content/uploads/2017/03/03/BC-US-Comic-Book-Auction-IMG-jpg-380x600.jpg",
                                      "https://www.thesun.co.uk/wp-content/uploads/2018/12/s-l1600.jpg?strip=all&w=569",
                                      "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/stan-lee-arrives-at-the-premiere-of-disney-and-marvels-news-photo-950501274-1542049801.jpg",
                                      "https://upload.wikimedia.org/wikipedia/commons/f/f9/Keith_Olbermann_-_small.jpg"
                                    ],
                              ),
                            ),         

                  ],)
                ],
              )
            )
            


            
            ));
  }
}
