import 'package:flutter/material.dart';
import 'package:registry/models.dart';
import 'package:registry/channels/heritage_header.dart';

class HeritageChannel extends StatefulWidget {
  final User friend;
 // final Object avatarTag;

  HeritageChannel(
    this.friend, );

  @override
  _HeritageChannelState createState() => _HeritageChannelState();
}

class _HeritageChannelState extends State<HeritageChannel> {
  @override
  Widget build(BuildContext context) {




ListTile makeListTile(int lesson) => ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.white24))),
            child: Icon(Icons.autorenew, color: Colors.white),
          ),
          title: Text(
            "lesson.title",
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
                    child: Text("Level 12",
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
            decoration: BoxDecoration(color: Colors.white),
            child: Image.asset('assets/images/heritage_$index.png'),
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
              new HeritageHeader(
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
        itemCount: 8,
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