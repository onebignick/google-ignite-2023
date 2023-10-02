import 'package:cloud9/screens/workshop_screen.dart';
import 'package:cloud9/theme.dart';
import 'package:flutter/material.dart';
import "screens.dart";
import "../widgets/widgets.dart";
import '../models/models.dart';

class ResourcesScreen extends StatelessWidget {
  const ResourcesScreen({Key? key}) : super(key: key);

  static const routeName = '/resources';
  @override
  Widget build(BuildContext context) {
    List<String> tabs = [
      "Sort by",
      "Topic",
      "Price",
      "Subsidised",
      "Language",
      "Course Mode"
    ];
    List<Post> post1 = [
      Post(
        id: 1,
        title: '',
        subtitle: '',
        content: '',
        author: '',
        authorId: 1,
        authorImageUrl:
            'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
        category: const [
          Text("Roles & responsibilities"),
          Text("Stress & burnout"),
          Text("Relationships"),
          Text("Self-care"),
        ],
        views: 1204,
        likes: 100,
        imageUrl: "assets/images/guides/daily-home-care-guide.png",
        createdAt: DateTime.now().subtract(const Duration(hours: 5)),
      ),
      Post(
        id: 1,
        title: '',
        subtitle: '',
        content: '',
        author: '',
        authorId: 1,
        authorImageUrl:
            'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
        category: const [
          Text("Roles & responsibilities"),
          Text("Stress & burnout"),
          Text("Relationships"),
          Text("Self-care"),
        ],
        views: 1204,
        likes: 100,
        imageUrl: "assets/images/guides/home-safety-adaptation-guide.png",
        createdAt: DateTime.now().subtract(const Duration(hours: 5)),
      ),
      Post(
        id: 1,
        title: '',
        subtitle: '',
        content: '',
        author: '',
        authorId: 1,
        authorImageUrl:
            'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
        category: const [
          Text("Roles & responsibilities"),
          Text("Stress & burnout"),
          Text("Relationships"),
          Text("Self-care"),
        ],
        views: 1204,
        likes: 100,
        imageUrl: "assets/images/guides/end-of-life-preparation-guide.png",
        createdAt: DateTime.now().subtract(const Duration(hours: 5)),
      ),
    ];

    List<Post> post2 = [
      Post(
        id: 2,
        title: '',
        subtitle: '',
        content: '',
        author: '',
        authorId: 1,
        authorImageUrl:
            'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
        category: const [
          Text("Roles & responsibilities"),
          Text("Stress & burnout"),
          Text("Relationships"),
          Text("Self-care"),
        ],
        views: 1204,
        likes: 100,
        imageUrl: "assets/images/guides/dementia-care.png",
        createdAt: DateTime.now().subtract(const Duration(hours: 5)),
      ),
      Post(
        id: 2,
        title: '',
        subtitle: '',
        content: '',
        author: '',
        authorId: 1,
        authorImageUrl:
            'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
        category: const [
          Text("Roles & responsibilities"),
          Text("Stress & burnout"),
          Text("Relationships"),
          Text("Self-care"),
        ],
        views: 1204,
        likes: 100,
        imageUrl: "assets/images/guides/mental-health-care-guide.png",
        createdAt: DateTime.now().subtract(const Duration(hours: 5)),
      ),
      Post(
        id: 2,
        title: '',
        subtitle: '',
        content: '',
        author: '',
        authorId: 1,
        authorImageUrl:
            'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
        category: const [
          Text("Roles & responsibilities"),
          Text("Stress & burnout"),
          Text("Relationships"),
          Text("Self-care"),
        ],
        views: 1204,
        likes: 100,
        imageUrl: "assets/images/guides/cancer-care-guide.png",
        createdAt: DateTime.now().subtract(const Duration(hours: 5)),
      ),
        Post(
        id: 3,
        title: '',
        subtitle: '',
        content: '',
        author: '',
        authorId: 1,
        authorImageUrl:
            'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
        category: const [
          Text("Roles & responsibilities"),
          Text("Stress & burnout"),
          Text("Relationships"),
          Text("Self-care"),
        ],
        views: 1204,
        likes: 100,
        imageUrl: "assets/images/guides/stroke-recovery-guide.png",
        createdAt: DateTime.now().subtract(const Duration(hours: 5)),
      ),
        Post(
        id: 4,
        title: '',
        subtitle: '',
        content: '',
        author: '',
        authorId: 1,
        authorImageUrl:
            'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
        category: const [
          Text("Roles & responsibilities"),
          Text("Stress & burnout"),
          Text("Relationships"),
          Text("Self-care"),
        ],
        views: 1204,
        likes: 100,
        imageUrl: "assets/images/guides/bedbound-care-guide.png",
        createdAt: DateTime.now().subtract(const Duration(hours: 5)),
      ),
        Post(
        id: 5,
        title: '',
        subtitle: '',
        content: '',
        author: '',
        authorId: 1,
        authorImageUrl:
            'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
        category: const [
          Text("Roles & responsibilities"),
          Text("Stress & burnout"),
          Text("Relationships"),
          Text("Self-care"),
        ],
        views: 1204,
        likes: 100,
        imageUrl: "assets/images/guides/mobility-aid-care-guide.png",
        createdAt: DateTime.now().subtract(const Duration(hours: 5)),
      ),
    ];

        List<Post> post3 = [
      Post(
        id: 3,
        title: '',
        subtitle: '',
        content: '',
        author: '',
        authorId: 1,
        authorImageUrl:
            'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
        category: const [
          Text("Roles & responsibilities"),
          Text("Stress & burnout"),
          Text("Relationships"),
          Text("Self-care"),
        ],
        views: 1204,
        likes: 100,
        imageUrl: "assets/images/guides/caring-for-myself-guide.png",
        createdAt: DateTime.now().subtract(const Duration(hours: 5)),
      ),
    ];

    List<Post> posts = Post.posts;
    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          title: TabBar(
            indicatorColor: Colors.purple,
            tabs: [
              TextButton(
                child: Text("Guides",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.purple)),
                onPressed: () {
                  Navigator.pushNamed(context, ResourcesScreen.routeName);
                },
              ),
              TextButton(
                child: Text("Workshops",
                    style: Theme.of(context).textTheme.bodyMedium),
                onPressed: () {
                  Navigator.pushNamed(context, WorkshopScreen.routeName);
                },
              )
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            Container(
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
            ScrollWidget(posts: post1, title: "General Caregiving"),
            ScrollWidget(
                posts: post2, title: "Caregiving for Specific Conditions"),
            ScrollWidget(posts: post3, title: "Self-care"),
            // const _DiscoverNews(),
            // _CategoryNews(tabs: tabs),
          ],
        ),
      ),
    );
  }
}

class _CategoryNews extends StatelessWidget {
  const _CategoryNews({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    final posts = Post.posts;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            indicatorColor: Colors.purple,
            tabs: tabs
                .map(
                  (tab) => Tab(icon: CustomTag2(child: tab)),
                )
                .toList(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height -
                56 -
                56, // Adjust the height
            child: TabBarView(
              children: tabs
                  .map(
                    (tab) => ListView.builder(
                      shrinkWrap: true,
                      itemCount: posts.length,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              PostScreen.routeName,
                              arguments: posts[index],
                            );
                          },
                          child: Row(
                            children: [
                              ImageContainer(
                                width: 80,
                                height: 80,
                                margin: const EdgeInsets.all(10.0),
                                borderRadius: 5,
                                imageUrl: posts[index].imageUrl,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      posts[index].title,
                                      maxLines: 2,
                                      overflow: TextOverflow.clip,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.schedule,
                                          size: 18,
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          '${DateTime.now().difference(posts[index].createdAt).inHours} hours ago',
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                        const SizedBox(width: 20),
                                        const Icon(
                                          Icons.visibility,
                                          size: 18,
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          '${posts[index].views} views',
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}

// class _DiscoverNews extends StatelessWidget {
//   const _DiscoverNews({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.of(context).size.height * 0.25,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'Discover',
//             style: Theme.of(context)
//                 .textTheme
//                 .headline4!
//                 .copyWith(color: Colors.black, fontWeight: FontWeight.w900),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             'News from all over the world',
//             style: Theme.of(context).textTheme.bodySmall,
//           ),
//           const SizedBox(height: 20),
//           TextFormField(
//             decoration: InputDecoration(
//               hintText: 'Search',
//               fillColor: Colors.grey.shade200,
//               filled: true,
//               prefixIcon: const Icon(
//                 Icons.search,
//                 color: Colors.grey,
//               ),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(20.0),
//                 borderSide: BorderSide.none,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
