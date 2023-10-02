import 'package:cloud9/theme.dart';
import 'package:flutter/material.dart';
import "screens.dart";
import "../widgets/widgets.dart";
import '../models/post_model.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  static const routeName = '/services';
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

    var selectedFilter = null;
    var selectedCategory = null;
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
                child: Text("Service Requests",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.purple)),
                onPressed: () {
                  Navigator.pushNamed(context, ServicesScreen.routeName);
                },
              ),
              TextButton(
                child: Text("Care Services",
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
    // Container for the search bar
    Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Row(
        children: [
          // Search Icon and Text
          Expanded(
            child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Search',
              fillColor: Colors.grey.shade200,
              filled: true,
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide.none,
              ),
            ),

          ),
      )],
      ),
    ),
    const SizedBox(height: 10.0), // Add spacing between search bar and filtering settings
    // Container for the filtering settings
    Container(
  alignment: Alignment.centerLeft, // Align to the left
  decoration: BoxDecoration(
    border: Border.all(
      color: const Color.fromARGB(0, 0, 0, 0), // Border color
      width: 0.5, // Border width
    ),
    borderRadius: BorderRadius.circular(8.0), // Border radius
  ),
  child: Row(
    children: [
      // Tune Icon Container with padding
      Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          child: Icon(
            Icons.tune,
            color: Colors.black,
          ),
        ),
      ),
      // Padding between Tune Icon and Sort by Dropdown
      SizedBox(width: 10.0), // Add desired width between elements
      // Sort by Dropdown with padding and left-aligned
      Container(
        alignment: Alignment.centerLeft, // Align to the left
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey, // Border color
            width: 0.5, // Border width
          ),
          borderRadius: BorderRadius.circular(12.0), // Border radius
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 150.0, // Set desired width
          ),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: DropdownButton<String>(
              value: selectedFilter,
              onChanged: (newValue) {
                // Update the selected filter when the user makes a selection
                selectedFilter = newValue!;
              },
              items: [
                DropdownMenuItem<String>(
                  value: null,
                  child: Text('sort by'),
                ),
                DropdownMenuItem<String>(
                  value: 'title',
                  child: Text('Title'),
                ),
                DropdownMenuItem<String>(
                  value: 'location',
                  child: Text('Location'),
                ),
                DropdownMenuItem<String>(
                  value: 'date',
                  child: Text('Date'),
                ),
                DropdownMenuItem<String>(
                  value: 'category',
                  child: Text('Category'),
                ),
              ],
              icon: Icon( // Customize the dropdown icon
                Icons.arrow_drop_down, 
                color: Colors.grey,
              ),
              underline: Container(), // Remove the default underline
            ),
          ),
        ),
      ),
      // Padding between Sort by Dropdown and Category Dropdown
      SizedBox(width: 10.0), // Add desired width between elements
      // Category Dropdown with padding and left-aligned
      Container(
        alignment: Alignment.centerLeft, // Align to the left
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey, // Border color
            width: 0.5, // Border width
          ),
          borderRadius: BorderRadius.circular(12.0), // Border radius
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 150.0, // Set desired width
          ),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: DropdownButton<String>(
              value: selectedCategory,
              onChanged: (newValue) {
                // Update the selected category when the user makes a selection
                selectedCategory = newValue!;
              },
              items: [
                DropdownMenuItem<String>(
                  value: 'null',
                  child: Text('category'),
                ),
                DropdownMenuItem<String>(
                  value: 'food',
                  child: Text('Food'),
                ),
                DropdownMenuItem<String>(
                  value: 'clinic',
                  child: Text('Clinic'),
                ),
                DropdownMenuItem<String>(
                  value: 'activity',
                  child: Text('Activity'),
                ),
                DropdownMenuItem<String>(
                  value: 'transport',
                  child: Text('Transport'),
                ),
              ],
              icon: Icon( // Customize the dropdown icon
                Icons.arrow_drop_down, 
                color: Colors.grey,
              ),
              underline: Container(), // Remove the default underline
            ),
          ),
        ),
      ),
    ],
  ),
),

    const SizedBox(height: 8.0), // Add spacing
    // Rest of your content
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
    return Column(
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
          height: MediaQuery.of(context).size.height,
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
    );
  }
}

class _DiscoverNews extends StatelessWidget {
  const _DiscoverNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Discover',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.black, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 5),
          Text(
            'News from all over the world',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Search',
              fillColor: Colors.grey.shade200,
              filled: true,
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              suffixIcon: const RotatedBox(
                quarterTurns: 1,
                child: Icon(
                  Icons.tune,
                  color: Colors.grey,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
