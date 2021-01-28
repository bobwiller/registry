import 'package:flutter/material.dart';

class ArticlesShowcase extends StatelessWidget {
  List<Widget> _buildItems() {
    
    var items = <Widget>[];

    for (var i = 1; i <= 6; i++) {
      var image = Card(
        elevation: 4.0,
        child: Column(children: [
          Image.network('https://via.placeholder.com/75'),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting '
                  'industry. Lorem Ipsum has been the industry\'s standard dummy '
                  'text ever since the 1500s.',
              style: TextStyle(color: Colors.white70, fontSize: 8.0)
                  
            ),
          ),
        ],),
      );

      items.add(image);
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    var delegate = new SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
    );

    return new GridView(
      padding: const EdgeInsets.only(top: 16.0),
      gridDelegate: delegate,
      children: _buildItems(),
    );
  }
}