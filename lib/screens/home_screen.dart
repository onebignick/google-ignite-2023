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
      bottomNavigationBar: const CustomBottomAppBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(
              10, 15, 10, 10), // Adjust horizontal padding
          child: TextFormField(
            decoration: InputDecoration(
                hintText: 'Search',
                fillColor: AppPalette.topicPurple,
                filled: true,
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppPalette.darkPurple,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                )),
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(0, 5.0, 5.0, 0),
        itemCount: Post.posts.length,
        itemBuilder: (BuildContext context, int index) {
          var post = Post.posts[index];
          return Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: AppPalette.lightPurple), // Optional border styling
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)), // Optional border radius
              ),
              margin: EdgeInsets.fromLTRB(0, 10.0, 10.0, 0), // Optional margin
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("hello world"),
                // child: PostWidget(
                //   username: post.username,
                //   title: post.title,
                //   caption: post.caption,
                //   avatarImagePath: post.avatarImagePath,
                //   tags: post.tags,
                // ),
              ));
        },
      ),
    );
  }
}
