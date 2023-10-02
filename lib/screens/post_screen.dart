import 'package:flutter/material.dart';

import '../models/post_model.dart';
import '../widgets/custom_tag.dart';
import '../widgets/image_container.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  static const routeName = '/post';
  @override
  Widget build(BuildContext context) {
    final post = ModalRoute.of(context)!.settings.arguments as Post;
    return ImageContainer(
      width: double.infinity,
      imageUrl: post.imageUrl,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [_NewsHeadline(post: post), _NewsBody(post: post)],
        ),
      ),
    );
  }
}

class _NewsBody extends StatelessWidget {
  const _NewsBody({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomTag(
                borderColor: Colors.black,
                backgroundColor: Colors.black,
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: NetworkImage(
                      post.authorImageUrl,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    post.author,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              CustomTag(
                borderColor: Colors.black,
                backgroundColor: Colors.grey.shade200,
                children: [
                  const Icon(
                    Icons.timer,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${DateTime.now().difference(post.createdAt).inHours}h',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(width: 10),
              CustomTag(
                borderColor: Colors.black,
                backgroundColor: Colors.grey.shade200,
                children: [
                  const Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${post.views}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            post.title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(
            post.content,
            style:
                Theme.of(context).textTheme.bodyMedium!.copyWith(height: 1.5),
          ),
          const SizedBox(height: 20),
          GridView.builder(
              shrinkWrap: true,
              itemCount: 2,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.25,
              ),
              itemBuilder: (context, index) {
                return ImageContainer(
                  width: MediaQuery.of(context).size.width * 0.42,
                  imageUrl: post.imageUrl,
                  margin: const EdgeInsets.only(right: 5.0, bottom: 5.0),
                );
              })
        ],
      ),
    );
  }
}

class _NewsHeadline extends StatelessWidget {
  const _NewsHeadline({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          // CustomTag(
          //   borderColor: Colors.black,
          //   backgroundColor: Colors.grey.withAlpha(150),
          //   children: [
          //     Text(
          //       post.category,
          //       style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          //             color: Colors.white,
          //           ),
          //     ),
          //   ],
          // ),
          const SizedBox(height: 10),
          Text(
            post.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.25,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            post.subtitle,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
