// post_model.dart
import 'package:flutter/material.dart';

class Post {
  final String username;
  final String title;
  final String caption;
  final String avatarImagePath;
  final List<Widget> tags;

  Post({
    required this.username,
    required this.title,
    required this.caption,
    required this.avatarImagePath,
    required this.tags,
  });

  // Define a static list of posts
  static final List<Post> posts = [
    Post(
      username: 'handymandy',
      title: 'First time caregiver tips',
      avatarImagePath: 'assets/images/avatars/30.png',
      caption: "I’m overwhelmed because I feel like I’m doing everything wrong. My main priority is to make sure my mother is totally comfortable and pain free while she is in her transition phase. I feel guilty when she’s sleeping comfortably and I have to move her to get her cleaned up or shift her position to prevent sores and she weeps in pain. It’s the toughest part about all this. I love caring for her because I love her, I’m so busy with things that I have become somewhat disassociated (I still cry but I know I haven’t processed things fully yet) and when all this is over, on top of all the other bad feelings, I deeply fear the guilt I’ll have for causing her that pain. I truly feel seeing her decline is traumatizing me. If anyone could offer some helpful tips, I would be very grateful.",
      tags: [
        Text("Roles & responsibilities"),
        Text("Stress & burnout"),
        Text("Relationships"),
        Text("Self-care"),
      ],
    ),
    Post(
      username: 'immaxis',
      title: 'Need advice on dementia meds',
      avatarImagePath: 'assets/images/avatars/29.png',
      caption: "My mom is well into the later stages of Alzheimer's and can no longer do any self care. She is constantly anxious and fearful people Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
      tags: [
        Text("Dementia"),
        Text("Medication"),
      ],
    ),
    Post(
      username: 'solarm',
      title: 'Breaking sad news to mother with Dementia',
      avatarImagePath: 'assets/images/avatars/28.png',
      caption: "Hello everyone. Has anyone had heartbreaking news they've had to break to someone? Trying to figure out if I should just lie, or who",
      tags: [
        Text("Dementia"),
        Text("Relationships"),
      ],
    ),
    Post(
      username: 'handymandy',
      title: 'First time caregiver tips',
      avatarImagePath: 'assets/images/avatars/30.png',
      caption: "I’m overwhelmed because I feel like I’m doing everything wrong. My main priority is to make sure my mother is totally comfortable and pain free while she is in her transition phase. I feel guilty when she’s sleeping comfortably and I have to move her to get her cleaned up or shift her position to prevent sores and she weeps in pain. It’s the toughest part about all this. I love caring for her because I love her, I’m so busy with things that I have become somewhat disassociated (I still cry but I know I haven’t processed things fully yet) and when all this is over, on top of all the other bad feelings, I deeply fear the guilt I’ll have for causing her that pain. I truly feel seeing her decline is traumatizing me. If anyone could offer some helpful tips, I would be very grateful.",
      tags: [
        Text("Roles & responsibilities"),
        Text("Stress & burnout"),
        Text("Relationships"),
        Text("Self-care"),
      ],
    ),
    Post(
      username: 'immaxis',
      title: 'Need advice on dementia meds',
      avatarImagePath: 'assets/images/avatars/29.png',
      caption: "My mom is well into the later stages of Alzheimer's and can no longer do any self care. She is constantly anxious and fearful people Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
      tags: [
        Text("Dementia"),
        Text("Medication"),
      ],
    ),
    Post(
      username: 'solarm',
      title: 'Breaking sad news to mother with Dementia',
      avatarImagePath: 'assets/images/avatars/28.png',
      caption: "Hello everyone. Has anyone had heartbreaking news they've had to break to someone? Trying to figure out if I should just lie, or who",
      tags: [
        Text("Dementia"),
        Text("Relationships"),
      ],
    ),
    Post(
      username: 'handymandy',
      title: 'First time caregiver tips',
      avatarImagePath: 'assets/images/avatars/30.png',
      caption: "I’m overwhelmed because I feel like I’m doing everything wrong. My main priority is to make sure my mother is totally comfortable and pain free while she is in her transition phase. I feel guilty when she’s sleeping comfortably and I have to move her to get her cleaned up or shift her position to prevent sores and she weeps in pain. It’s the toughest part about all this. I love caring for her because I love her, I’m so busy with things that I have become somewhat disassociated (I still cry but I know I haven’t processed things fully yet) and when all this is over, on top of all the other bad feelings, I deeply fear the guilt I’ll have for causing her that pain. I truly feel seeing her decline is traumatizing me. If anyone could offer some helpful tips, I would be very grateful.",
      tags: [
        Text("Roles & responsibilities"),
        Text("Stress & burnout"),
        Text("Relationships"),
        Text("Self-care"),
      ],
    ),
    Post(
      username: 'immaxis',
      title: 'Need advice on dementia meds',
      avatarImagePath: 'assets/images/avatars/29.png',
      caption: "My mom is well into the later stages of Alzheimer's and can no longer do any self care. She is constantly anxious and fearful people Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
      tags: [
        Text("Dementia"),
        Text("Medication"),
      ],
    ),
    Post(
      username: 'solarm',
      title: 'Breaking sad news to mother with Dementia',
      avatarImagePath: 'assets/images/avatars/28.png',
      caption: "Hello everyone. Has anyone had heartbreaking news they've had to break to someone? Trying to figure out if I should just lie, or who",
      tags: [
        Text("Dementia"),
        Text("Relationships"),
      ],
    ),
    Post(
      username: 'handymandy',
      title: 'First time caregiver tips',
      avatarImagePath: 'assets/images/avatars/30.png',
      caption: "I’m overwhelmed because I feel like I’m doing everything wrong. My main priority is to make sure my mother is totally comfortable and pain free while she is in her transition phase. I feel guilty when she’s sleeping comfortably and I have to move her to get her cleaned up or shift her position to prevent sores and she weeps in pain. It’s the toughest part about all this. I love caring for her because I love her, I’m so busy with things that I have become somewhat disassociated (I still cry but I know I haven’t processed things fully yet) and when all this is over, on top of all the other bad feelings, I deeply fear the guilt I’ll have for causing her that pain. I truly feel seeing her decline is traumatizing me. If anyone could offer some helpful tips, I would be very grateful.",
      tags: [
        Text("Roles & responsibilities"),
        Text("Stress & burnout"),
        Text("Relationships"),
        Text("Self-care"),
      ],
    ),
    Post(
      username: 'immaxis',
      title: 'Need advice on dementia meds',
      avatarImagePath: 'assets/images/avatars/29.png',
      caption: "My mom is well into the later stages of Alzheimer's and can no longer do any self care. She is constantly anxious and fearful people Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
      tags: [
        Text("Dementia"),
        Text("Medication"),
      ],
    ),
    Post(
      username: 'solarm',
      title: 'Breaking sad news to mother with Dementia',
      avatarImagePath: 'assets/images/avatars/28.png',
      caption: "Hello everyone. Has anyone had heartbreaking news they've had to break to someone? Trying to figure out if I should just lie, or who",
      tags: [
        Text("Dementia"),
        Text("Relationships"),
      ],
    ),
    // Add more posts as needed
  ];
}
