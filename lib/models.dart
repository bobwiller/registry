import 'package:meta/meta.dart';
//import 'package:timeago/timeago.dart' as timeago;

const placeholderStories = <Story>[Story()];

const nickwu241 =
    User(name: 'nickwu241', imageUrl: 'assets/images/nickwu241.jpg');
const featured = User(
    name: 'featured',
    imageUrl: 'assets/images/spotlight.png',
    stories: placeholderStories);
const heritage = User(
    name: 'heritage',
    imageUrl: 'assets/images/heritage.jpg',
    stories: placeholderStories);
const allen = User(
    name: 'josh allen',
    imageUrl: 'assets/images/allen.jpg',
    stories: placeholderStories);
const t206 = User(
    name: 't206',
    imageUrl: 'assets/images/t206.jpg',
    stories: placeholderStories);
const meigray = User(
    name: 'meigray',
    imageUrl: 'assets/images/meigray.jpg',
    stories: placeholderStories);
const pwcc = User(
    name: 'pwcc',
    imageUrl: 'assets/images/pwcc.jpg',
    stories: placeholderStories);
  const steve = User(
    name: 'steve aoki',
    imageUrl: 'assets/images/aoki.jpg',
    stories: placeholderStories);
  const ken = User(
    name: 'ken kendrick',
    imageUrl: 'assets/images/kendrick.jpg',
    stories: placeholderStories);    
  const gretzky = User(
  name: 'gretzky',
    imageUrl: 'assets/images/99.jpg',
    stories: placeholderStories);    
  const ebay = User(
  name: 'ebay',
    imageUrl: 'assets/images/ebay.png',
    stories: placeholderStories);
  const danda = User(
  name: 'dave & adams',
    imageUrl: 'assets/images/da.jpg',
    stories: placeholderStories);    


const currentUser = nickwu241;

class Post {
  List<String> imageUrls;
  final User user;
  final DateTime postedAt;

  List<Like> likes;
  List<Comment> comments;
  String location;

  String timeAgo() {
//    final now = DateTime.now();
    return "46 seconds";
  }

  bool isLikedBy(User user) {
    return likes.any((like) => like.user.name == user.name);
  }

  void addLikeIfUnlikedFor(User user) {
    if (!isLikedBy(user)) {
      likes.add(Like(user: user));
    }
  }

  void toggleLikeFor(User user) {
    if (isLikedBy(user)) {
      likes.removeWhere((like) => like.user.name == user.name);
    } else {
      addLikeIfUnlikedFor(user);
    }
  }

  Post({
    @required this.imageUrls,
    @required this.user,
    @required this.postedAt,
    @required this.likes,
    @required this.comments,
    this.location,
  });
}

class User {
  final String name;

  final String imageUrl;
  final List<Story> stories;

  const User({
    @required this.name,
    this.imageUrl,
    this.stories = const <Story>[],
  });
}

class Comment {
  String text;
  final User user;
  final DateTime commentedAt;
  List<Like> likes;

  bool isLikedBy(User user) {
    return likes.any((like) => like.user.name == user.name);
  }

  void toggleLikeFor(User user) {
    if (isLikedBy(user)) {
      likes.removeWhere((like) => like.user.name == user.name);
    } else {
      likes.add(Like(user: user));
    }
  }

  Comment({
    @required this.text,
    @required this.user,
    @required this.commentedAt,
    @required this.likes,
  });
}

class Like {
  final User user;

  Like({@required this.user});
}

class Story {
  const Story();
}
