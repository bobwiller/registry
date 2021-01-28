import 'package:flutter/material.dart';

import 'articles.dart';
import 'consignment.dart';
import 'past_auction.dart';

class MeiGrayFooter extends StatefulWidget {

  @override
  _MeiGrayFooterState createState() => new _MeiGrayFooterState();
}

class _MeiGrayFooterState extends State<MeiGrayFooter>
    with TickerProviderStateMixin {
  List<Tab> _tabs;
  List<Widget> _pages;
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _tabs = [
      new Tab(text: 'Store'),
      new Tab(text: 'Authentication'),
      new Tab(text: 'Articles'),
    ];
    _pages = [
      new PastAuctionsShowcase(),
      new ConsignmentsShowcase(),
      new ArticlesShowcase(),
    ];
    _controller = new TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(16.0),
      child: new Column(
        children: <Widget>[
          new TabBar(
            controller: _controller,
            tabs: _tabs,
            indicatorColor: Colors.white,
          ),
          new SizedBox.fromSize(
            size: const Size.fromHeight(300.0),
            child: new TabBarView(
              controller: _controller,
              children: _pages,
            ),
          ),
        ],
      ),
    );
  }
}