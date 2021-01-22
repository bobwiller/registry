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
      imageUrls: [
        'assets/images/wagner.jpg',
        'assets/images/howe_uni.jpg',
        'assets/images/dohlonega.png',
        'assets/images/allen_jersey.jpg',
        'assets/images/gretzky_rookie.jpg',
        'assets/images/charizard.jpg',
        'assets/images/gretzky_jersey.jpg',
        'assets/images/gretzky_jersey_2.jpg',
      ],
      likes: [
        Like(user: heritage),
        Like(user: allen),
        Like(user: t206),
        Like(user: nickwu241),
      ],
      comments: [
        Comment(
          text: 'So we’re saving the galaxy again? #gotg',
          user: heritage,
          commentedAt: DateTime(2019, 5, 23, 14, 35, 0),
          likes: [Like(user: nickwu241)],
        ),
      ],
      location: 'Heritage Auctions',
      postedAt: DateTime(2019, 5, 23, 12, 35, 0),
    ),
    Post(
      user: allen,
      imageUrls: ['assets/images/allen_jersey.jpg'],
      likes: [],
      comments: [],
      location: 'Josh Allen Foundation',
      postedAt: DateTime(2019, 5, 21, 6, 0, 0),
    ),
    Post(
      user: t206,
      imageUrls: [
        'assets/images/wagner.jpg',
        'assets/images/cobb.jpg',
      ],
      likes: [Like(user: nickwu241)],
      comments: [],
      location: 'T206 Channel',
      postedAt: DateTime(2019, 5, 2, 0, 0, 0),
    ),
    Post(
      user: gretzky,
      imageUrls: [
        'assets/images/gretzky_jersey_2.jpg',
        'assets/images/gretzky_rookie.jpg',
        'assets/images/gretzky_jersey.jpg',
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
