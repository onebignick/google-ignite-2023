import 'package:flutter/material.dart';
import '../theme.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/';

  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(
              10, 15, 10, 10), // Adjust horizontal padding
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8.0))),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Topic, article, video',
                fillColor: Colors.white,
                filled: true,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(0, 5.0, 5.0, 0),
        itemCount: Post.posts.length,
        itemBuilder: (BuildContext context, int index) {
          // var post = Post.posts[index];
          return Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: AppPalette.lightPurple), // Optional border styling
                borderRadius: const BorderRadius.all(
                    Radius.circular(10.0)), // Optional border radius
              ),
              margin: const EdgeInsets.fromLTRB(
                  0, 10.0, 10.0, 0), // Optional margin
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: PostWidget(
                  username: Post.posts[index].author,
                  title: Post.posts[index].title,
                  caption: Post.posts[index].content,
                  avatarImagePath: "/${30 - index}.png",
                  tags: Post.posts[index].category,
                ),
              ));
        },
      ),
    );
  }
}
