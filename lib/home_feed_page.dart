import 'package:flutter/material.dart';
import 'package:registry/ui_utils.dart';
import 'models.dart';
import 'avatar_widget.dart';
import 'post_widget.dart';

class HomeFeedPage extends StatefulWidget {
  final ScrollController scrollController;

  HomeFeedPage({this.scrollController});

  @override
  _HomeFeedPageState createState() => _HomeFeedPageState();
}

class _HomeFeedPageState extends State<HomeFeedPage> {
  
  final _posts = <Post>[
    Post(
      user: featured,
      items: [
        Item('assets/images/wagner.jpg', 'A rare opportunity to own a piece of one of the most important sports cards in history.  We are selling shares in this once in a lifetime opportunity.'),
        Item('assets/images/howe_uni.jpg', 'This game worn Howe jersey is now available over at MeiGray auctions.'),
        Item('assets/images/dohlonega.png', 'Shares are now being issued for rare Confederate Gold pieces.'),
        Item('assets/images/allen_jersey.jpg', 'Bid on this game worn jersey from Josh Allen to to support a great cause'),
        Item('assets/images/gretzky_rookie.jpg', 'Get a piece of one of the hottest cards in the market today.'),
        Item('assets/images/charizard.jpg', "View Steve Aoki's amazing collection"),
        // Item('assets/images/gretzky_jersey.jpg', 'More from the Great One'),
        // Item('assets/images/gretzky_jersey_2.jpg', '...'),
      ],
      likes: [
        Like(user: heritage),
        Like(user: allen),
        Like(user: t206),
        Like(user: nickwu241),
      ],
      comments: [
        Comment(
          text: 'Hey!, I have one of those!',
          user: ken,
          commentedAt: DateTime(2019, 5, 23, 14, 35, 0),
          likes: [Like(user: nickwu241)],
        ),
      ],
      location: 'Items curated by the Registry staff',
      postedAt: DateTime(2019, 5, 23, 12, 35, 0),
    ),
    Post(
      user: allen,
      items: [Item('assets/images/allen_jersey.jpg', "My game worn jersey from Super Bowl LIV is being auctioned. Proceeds benefit Osheis Children's Hopsital"),],
      likes: [],
      comments: [],
      location: 'Josh Allen Foundation',
      postedAt: DateTime(2019, 5, 21, 6, 0, 0),
    ),
    Post(
      user: t206,
      items: [
        Item('assets/images/wagner.jpg', 'The holy grail'),
        Item('assets/images/cobb.jpg', 'Rare Ty Cobb back card is available via private sale.'),
      ],
      likes: [Like(user: nickwu241)],
      comments: [],
      location: 'T206 Channel',
      postedAt: DateTime(2019, 5, 2, 0, 0, 0),
    ),
    Post(
      user: gretzky,
      items: [
        Item('assets/images/gretzky_jersey_2.jpg', "From the Great One's rookie season...."),
        Item('assets/images/gretzky_rookie.jpg', 'There are currently 143 Gretzky Rookie cards available.'),
        Item('assets/images/gretzky_jersey.jpg', 'Available in the May Heritage Auction'),
      ],
      likes: [Like(user: nickwu241)],
      comments: [],
      location: 'The Gretzky Channel',
      postedAt: DateTime(2019, 5, 2, 0, 0, 0),
    ),    
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, i) {
        if (i == 0) {
          return StoriesBarWidget();
        }
        return PostWidget(_posts[i - 1]);
      },
      itemCount: _posts.length + 1,
      controller: widget.scrollController,
    );
  }
}

class StoriesBarWidget extends StatelessWidget {
  final _users = <User>[
    currentUser,
    featured,
    heritage,
    allen,
    t206,
    meigray,
    gretzky,
    pwcc,
    steve,
    ken,
    ebay,
    danda
  ];

  void _onUserStoryTap(BuildContext context, int i) {
    final message =
        i == 0 ? 'Add to Your Story' : "View ${_users[i].name}'s Story";
    showSnackbar(context, message);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 106.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, i) {
          return AvatarWidget(
            user: _users[i],
            onTap: () => _onUserStoryTap(context, i),
            isLarge: true,
            isShowingUsernameLabel: true,
            isCurrentUserStory: i == 0,
          );
        },
        itemCount: _users.length,
      ),
    );
  }
}
