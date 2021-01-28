import 'package:flutter/material.dart';
import 'package:registry/models.dart';
import 'package:registry/widgets/friend_detail_header.dart';

class MyPortfolioChannel extends StatefulWidget {
  final User friend;
 // final Object avatarTag;

  MyPortfolioChannel(
    this.friend, );

  @override
  _MyPortfolioChannelState createState() => _MyPortfolioChannelState();
}

class _MyPortfolioChannelState extends State<MyPortfolioChannel> {
  @override
  Widget build(BuildContext context) {

    List<ActionItem> actions = [
      ActionItem("My Portfolio", Icons.account_balance, ""),
      ActionItem("My Collection", Icons.attach_money, "42 items"),
      ActionItem("My Investments", Icons.receipt, "+ 17%"),
      ActionItem("My Channels", Icons.compare_arrows, "16 subscriptions"),
      ActionItem("My Posts", Icons.sentiment_satisfied, "0 posts"),
      ActionItem("My Want Lists", Icons.phone, "9 items"),
      ActionItem("Watching/Bidding/Offers", Icons.data_usage, "3 ending soon")
    ];


ListTile makeListTile(int index) => ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.white24))),
            child: Icon(actions[index].icons, color: Colors.white),
          ),
          title: Text(
            actions[index].title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

          subtitle: Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    // tag: 'hero',
                    child: LinearProgressIndicator(
                        backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                        value: 32,
                        valueColor: AlwaysStoppedAnimation(Colors.green)),
                  )),
              Expanded(
                flex: 4,
                child: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(actions[index].subTitle,
                        style: TextStyle(color: Colors.white))),
              )
            ],
          ),
          trailing:
              Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
          onTap: () {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => DetailPage(lesson: lesson)));
          },  
);

Card makeCard(int index) => Card(
elevation: 8.0,
 margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            child: makeListTile(index),
          ),
);



    var linearGradient = const BoxDecoration(
      gradient: const LinearGradient(
        begin: FractionalOffset.centerRight,
        end: FractionalOffset.bottomLeft,
        colors: <Color>[
          const Color.fromRGBO(58, 66, 86, 1.0),
          const Color.fromRGBO(58, 66, 86, 1.0),
        ],
      ),
    );

    return  SingleChildScrollView(
        child: new Container(
          decoration: linearGradient,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new FriendDetailHeader(
                widget.friend,
              ),
              new Padding(
                padding: const EdgeInsets.all(24.0),
                child: 
                Container(
                 // color: Color.fromRGBO(58, 66, 86, 1.0),
                  decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
         child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: actions.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(index);
        },
      ),
      
      ),
                
                
                
                
                
              //  Container(), // new FriendDetailBody(widget.friend),
              ),
              Container(),
              //new FriendShowcase(widget.friend),
            ],
          ),
        ),
      );
    
  }

     
    
    
}


class ActionItem {
  String title;
  IconData icons;
  String subTitle;

  ActionItem(this.title, this.icons, this.subTitle);

}