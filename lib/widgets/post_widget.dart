import 'package:cloud9/theme.dart';
import 'package:flutter/material.dart';
import '../models/post_model2.dart';

class PostWidget extends StatelessWidget {
  final String username;
  final String title;
  final String caption;
  final String avatarImagePath;
  final List<dynamic> tags;

  PostWidget({
    required this.username,
    required this.title,
    required this.caption,
    required this.avatarImagePath,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            // User Image (on the left) with padding
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/avatars$avatarImagePath'),
                radius: 20.0,
              ),
            ),
            // Title, Username, and Caption (in a column)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Username
                  Text(
                    username,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  // Title
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
            height: 10.0), // Add spacing between the user info and caption

        // Caption
        Text(
          caption,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.grey),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),

        const SizedBox(height: 10.0), // Add spacing between caption and tags

        Wrap(
          spacing: 8.0,
          children: tags.map(
            (tag) {
                // If it's a String, create an ElevatedButton for the tag
                return ElevatedButton(
                  onPressed: () {
                    // Handle button click for this tag
                    print('Button clicked for $tag');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: AppPalette.topicPurple, // Background color
                    onPrimary: Colors.grey.shade800, // Text color
                  ),
                  child: tag,
                ); // Return an empty container for unknown types
            },
          ).toList(),
        ),
        // add elevated button tags here

        // Like, Comment, and Share Buttons
        Padding(
          padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 2.0),
          child: Row(
            children: <Widget>[
              Text(
                '5 Likes 2 Comments',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Spacer(),
              // Interactive Icons with InkWell
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0), // Adjust the horizontal spacing
                child: InkWell(
                  onTap: () {
                    // Handle Like button click
                  },
                  child: Icon(Icons.thumb_up_alt_outlined),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0), // Adjust the horizontal spacing
                child: InkWell(
                  onTap: () {
                    // Handle Comment button click
                  },
                  child: Icon(Icons.mode_comment_outlined),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0), // Adjust the horizontal spacing
                child: InkWell(
                  onTap: () {
                    // Handle Share button click
                  },
                  child: Icon(Icons.ios_share),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.0), // Add spacing between posts
      ],
    );
  }
}
