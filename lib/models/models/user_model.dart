class User {
  final String id;
  final String username;
  final String profilePicPath;

  User({
    required this.id,
    required this.username,
    required this.profilePicPath,
  });

  static List<User> users = [
    User(
      id: '1',
      username: 'handymandy',
      profilePicPath: 'assets/images/avatars/30.png',
    ),
    User(
      id: '2',
      username: 'immaxis',
      profilePicPath: 'assets/images/avatars/29.png',
    ),
    User(
      id: '3',
      username: 'solarm',
      profilePicPath: 'assets/images/avatars/28.png',
    ),
    User(
      id: '4',
      username: 'ansley',
      profilePicPath: 'assets/images/avatars/27.png',
    ),
    User(
      id: '5',
      username: 'cococorrine',
      profilePicPath: 'assets/images/avatars/26.png',
    ),
    User(
      id: '6',
      username: 'kellypelly',
      profilePicPath: 'assets/images/avatars/25.png',
    ),
    User(
      id: '7',
      username: 'supersandra',
      profilePicPath: 'assets/images/avatars/24.png',
    ),
    User(
      id: '8',
      username: 'cocolemon',
      profilePicPath: 'assets/images/avatars/23.png',
    ),
  ];
}
