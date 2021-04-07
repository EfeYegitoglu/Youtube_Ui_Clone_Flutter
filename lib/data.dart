class User {
  final String username;
  final String profileImageUrl;
  final String subscribers;

  const User({
    required this.username,
    required this.profileImageUrl,
    required this.subscribers,
  });
}

const User currentUser = User(
  username: 'James Lathrop',
  profileImageUrl:
      'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  subscribers: '100 B',
);

class Video {
  final String id;
  final User author;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;
  final String likes;
  final String dislikes;

  const Video({
    required this.id,
    required this.author,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.timestamp,
    required this.viewCount,
    required this.likes,
    required this.dislikes,
  });
}

final List<User> otherUsers = [
  User(
      username: "Carolyn Duncan",
      profileImageUrl:
          "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
      subscribers: "58 B"),
  User(
      username: "Matthew Hinkle",
      profileImageUrl:
          "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80",
      subscribers: "126 B"),
  User(
      username: "James Lathrop",
      profileImageUrl:
          "https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80",
      subscribers: "1.2 M B"),
  User(
      username: "Elizabeth Wong",
      profileImageUrl:
          "https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80",
      subscribers: "3.4 M"),
  User(
      username: "Amy Smith",
      profileImageUrl:
          "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80",
      subscribers: "12 B"),
  User(
      username: "Paul Pinnock",
      profileImageUrl:
          "https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
      subscribers: "1.4 B"),
];

final List<Video> videos = [
  Video(
    id: 'x606y4QWrxo',
    author: otherUsers[0],
    title: 'Flutter Youtube Clone Thumbnail | News',
    thumbnailUrl:
        'https://images.unsplash.com/photo-1585829365295-ab7cd400c167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
    duration: '8:20',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '10 B',
    likes: '958',
    dislikes: '4',
  ),
  Video(
    author: otherUsers[1],
    id: 'vrPk6LB9bjo',
    title:
        'Flutter Youtube Clone Thumbnail | Network, Social Media',
    thumbnailUrl:
        'https://images.unsplash.com/photo-1567443024551-f3e3cc2be870?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
    duration: '22:06',
    timestamp: DateTime(2021, 2, 26),
    viewCount: '8 B',
    likes: '485',
    dislikes: '8',
  ),
  Video(
    id: 'ilX5hnH8XoI',
    author: otherUsers[2],
    title: 'Daily sports activities',
    thumbnailUrl:
        'https://images.unsplash.com/photo-1556817411-31ae72fa3ea0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
    duration: '10:53',
    timestamp: DateTime(2020, 7, 12),
    viewCount: '18 B',
    likes: '1 B',
    dislikes: '4',
  ),
];

final List<Video> suggestedVideos = [
  Video(
    id: 'rJKN_880b-M',
    author: otherUsers[3],
    title: 'Flutter Youtube Clone Thumbnail | Travel Dates',
    thumbnailUrl:
        'https://images.unsplash.com/photo-1616239385506-58f516f347ab?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1355&q=80',
    duration: '1:13:15',
    timestamp: DateTime(2020, 8, 22),
    viewCount: '32 B',
    likes: '1.9 B',
    dislikes: '7',
  ),
  Video(
    id: 'HvLb5gdUfDE',
    author: otherUsers[4],
    title: 'Flutter Youtube Clone Thumbnail | Nature',
    thumbnailUrl:
        'https://images.unsplash.com/photo-1612211894457-06f6f6cf8635?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
    duration: '1:52:12',
    timestamp: DateTime(2020, 8, 7),
    viewCount: '190 B',
    likes: '9.3 B',
    dislikes: '45',
  ),
  Video(
    id: 'h-igXZCCrrc',
    author: otherUsers[5],
    title: 'Flutter Youtube Clone Thumbnail | 4K city tour',
    thumbnailUrl:
        'https://images.unsplash.com/photo-1615996923925-bfe3ab919361?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80',
    duration: '1:03:58',
    timestamp: DateTime(2019, 10, 17),
    viewCount: '358 B',
    likes: '20 B',
    dislikes: '85',
  ),
];
