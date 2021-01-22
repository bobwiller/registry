import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'channel_list_page.dart';
import 'ui_utils.dart';
import 'home_feed_page.dart';
class RegistryHome extends StatefulWidget {
  @override
  _RegistryHomeState createState() => _RegistryHomeState();
}

class _RegistryHomeState extends State<RegistryHome> {
    static const _kAddPhotoTabIndex = 2;
    int _tabSelectedIndex = 0;

  // Save the home page scrolling offset,
  // used when navigating back to the home page from another tab.
  double _lastFeedScrollOffset = 0;
  ScrollController _scrollController;

  @override
  void dispose() {
    _disposeScrollController();
    super.dispose();
  }

  void _scrollToTop() {
    if (_scrollController == null) {
      return;
    }
    _scrollController.animateTo(
      0.0,
      duration: Duration(milliseconds: 250),
      curve: Curves.decelerate,
    );
  }

  // Call this when changing the body that doesn't use a ScrollController.
  void _disposeScrollController() {
    if (_scrollController != null) {
      _lastFeedScrollOffset = _scrollController.offset;
      _scrollController.dispose();
      _scrollController = null;
    }
  }

    void _onTabTapped(BuildContext context, int index) {
    if (index == _kAddPhotoTabIndex) {
  //    showSnackbar(context, 'Add Photo');
    } else if (index == _tabSelectedIndex) {
      _scrollToTop();
    } else {
      setState(() => _tabSelectedIndex = index);
    }
  }

  Widget _buildPlaceHolderTab(String tabName) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 64.0),
        child: Column(
          children: <Widget>[
            Text(
              'Oops, the $tabName tab is\n under construction!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28.0),
            ),
            Image.asset('assets/images/building.gif'),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    switch (_tabSelectedIndex) {
      case 0:
        _scrollController =
            ScrollController(initialScrollOffset: _lastFeedScrollOffset);
        return HomeFeedPage(scrollController: _scrollController);
      case 2:
          _scrollController =
            ScrollController(initialScrollOffset: _lastFeedScrollOffset);
        return ChannelListPage(scrollController: _scrollController);
      default:
        const tabIndexToNameMap = {
          0: 'Home',
          1: 'Search',
          2: 'Add Channel',
          3: 'Notifications',
          4: 'Profile',
        };
        _disposeScrollController();
        return _buildPlaceHolderTab(tabIndexToNameMap[_tabSelectedIndex]);
    }
  }

  // Unselected tabs are outline icons, while the selected tab should be solid.
  Widget _buildBottomNavigation() {
    const unselectedIcons = <IconData>[
      OMIcons.home,
      Icons.search,
      Icons.apps,
      Icons.favorite_border,
      Icons.person_outline,
    ];
    const selecteedIcons = <IconData>[
      Icons.home,
      Icons.search,
      Icons.apps,
      Icons.favorite,
      Icons.person,
    ];
    final bottomNaivgationItems = List.generate(5, (int i) {
      final iconData =
          _tabSelectedIndex == i ? selecteedIcons[i] : unselectedIcons[i];
      return BottomNavigationBarItem(icon: Icon(iconData), title: Container());
    }).toList();

    return Builder(builder: (BuildContext context) {
      return BottomNavigationBar(
        iconSize: 32.0,
        type: BottomNavigationBarType.fixed,
        items: bottomNaivgationItems,
        currentIndex: _tabSelectedIndex,
        onTap: (int i) => _onTabTapped(context, i),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.grey[50],
        title: Row(
          children: <Widget>[
            // Builder(builder: (BuildContext context) {
            //   return 
            //   GestureDetector(
            //     child: Icon(OMIcons.cameraAlt, color: Colors.black, size: 32.0),
            //     onTap: () => showSnackbar(context, 'Add Photo'),
            //   );
            // }),
            SizedBox(width: 12.0),
            GestureDetector(
              child: Text(
                'Portfolio Registry',
                style: TextStyle(
                    fontFamily: 'Billabong',
                    color: Colors.black,
                    fontSize: 32.0),
              ),
              onTap: _scrollToTop,
            ),
          ],
        ),
        actions: <Widget>[
          Builder(builder: (BuildContext context) {
            return IconButton(
              color: Colors.black,
              icon: Icon(OMIcons.liveTv),
              onPressed: () => showSnackbar(context, 'Live TV'),
            );
          }),
          Builder(builder: (BuildContext context) {
            return IconButton(
              color: Colors.black,
              icon: Icon(OMIcons.nearMe),
              onPressed: () => showSnackbar(context, 'My Messages'),
            );
          }),
        ],
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigation(),
    );
      }


}