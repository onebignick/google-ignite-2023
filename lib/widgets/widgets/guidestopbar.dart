import 'package:flutter/material.dart';
import 'package:flutter_social_media_ui/theme.dart';

class GuidesTopBar extends StatefulWidget {
  @override
  _GuidesTopBarState createState() => _GuidesTopBarState();
}

class _GuidesTopBarState extends State<GuidesTopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          const SizedBox(
            height: 10.0,
          ),
          GeneralCaregiving(),
          const SizedBox(
            height: 20.0,
          ),
          SpecificConditions(),
          const SizedBox(
            height: 20.0,
          ),
          SelfCare(),
        ],
      ),
    );
  }

    Widget GeneralCaregiving() {
    return Material(
      color: AppPalette.backgroundColor,
      elevation: 14.0,
      shadowColor: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: labelContainer('General Caregiving'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: appsGeneralContainer(),
          ),
        ],
      ),
    );
  }

  Widget SpecificConditions() {
    return Material(
      color: AppPalette.backgroundColor,
      elevation: 14.0,
      shadowColor: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: labelContainer('Specific Conditions'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: appsSpecificContainer(),
          ),
        ],
      ),
    );
  }

  Widget SelfCare() {
    return Material(
      color: AppPalette.backgroundColor,
      elevation: 14.0,
      shadowColor: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: labelContainer('Self Care'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: appsSelfCareContainer(),
          ),
        ],
      ),
    );
  }

  Widget labelContainer(String labelVal) {
    return Container(
      height: 30.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            labelVal,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ],
      ),
    );
  }

  Widget imageSection(String imageVal, String appVal) {
    return Column(
      children: <Widget>[
        Container(
          height: 100.0,
          width: 200.0,
          decoration: new BoxDecoration(
            image: DecorationImage(
              image: new NetworkImage(imageVal),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          appVal,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          children: <Widget>[
            Text(
              'Articles Videos and More',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 5),
          ],
        )
      ],
    );
  }

  Widget appsGeneralContainer() {
    return Container(
      height: 160.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          imageSection(
              'https://lh3.googleusercontent.com/48wwD4kfFSStoxwuwCIu6RdM2IeZmZKfb1ZeQkga0qEf1JKsiD-hK3Qf8qvxHL09lQ=s180-rw',
              'Amazon Kindle'),
          SizedBox(
            width: 20.0,
          ),
          imageSection(
              'https://lh3.googleusercontent.com/7uRfJe2KkpKxZuMvY4OjhIq-TJrMeHgWYQt0H7LHZl4WNDAYjI6FFrLSsLhj2g8cqKr5=s180-rw',
              'Audible'),
          SizedBox(
            width: 20.0,
          ),
          imageSection(
              'https://lh3.googleusercontent.com/d6TTnyRybU8B2naK8a0y1_u8ufjtK5V-mizS6o1tCx0U1aYPX9nJzcq9rSm5W2VVzBw=s180-rw',
              'Skype'),
          // Add more images here...
        ],
      ),
    );
  }

  Widget appsSpecificContainer() {
    return Container(
      height: 160.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          // Add images for Specific Conditions here...
          imageSection(
              'https://lh3.googleusercontent.com/48wwD4kfFSStoxwuwCIu6RdM2IeZmZKfb1ZeQkga0qEf1JKsiD-hK3Qf8qvxHL09lQ=s180-rw',
              'Amazon Kindle'),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
    );
  }

  Widget appsSelfCareContainer() {
    return Container(
      height: 160.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          imageSection(
              'https://lh3.googleusercontent.com/48wwD4kfFSStoxwuwCIu6RdM2IeZmZKfb1ZeQkga0qEf1JKsiD-hK3Qf8qvxHL09lQ=s180-rw',
              'Amazon Kindle'),
          SizedBox(
            width: 20.0,
          ),
          // Add images for Self Care here...
        ],
      ),
    );
  }
}

// class SpecificConditions extends StatelessWidget {
//   final List<GuideCategory> categories;

//   SpecificConditions({required this.categories});

//   @override
//   Widget build(BuildContext context) {
//     final specificConditionsCategory = categories
//         .firstWhere((category) => category.name == 'Specific Conditions');

//     if (specificConditionsCategory.name.isNotEmpty) {
//       return Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Specific Conditions',
//                   style: Theme.of(context)
//                       .textTheme
//                       .headlineSmall!
//                       .copyWith(fontWeight: FontWeight.bold),
//                 ),
//                 Text('More', style: Theme.of(context).textTheme.bodyLarge),
//               ],
//             ),
//             const SizedBox(height: 20),
//             SizedBox(
//               height: 250,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: specificConditionsCategory.subcategories.length,
//                 itemBuilder: (context, index) {
//                   var subcategory = specificConditionsCategory.subcategories[index];
//                   return Container(
//                     width: MediaQuery.of(context).size.width * 0.5,
//                     margin: const EdgeInsets.only(right: 10),
//                     child: InkWell(
//                       onTap: () {
//                         // Handle subcategory tap
//                       },
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           // You can use your ImageContainer here with subcategory.imageUrl
//                           const SizedBox(height: 10),
//                           Text(
//                             subcategory.title,
//                             maxLines: 2,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .bodyLarge!
//                                 .copyWith(
//                                     fontWeight: FontWeight.bold, height: 1.5),
//                           ),
//                           const SizedBox(height: 5),
                          // Text(
                          //     'Articles Videos and more',
                          //     style: Theme.of(context).textTheme.bodySmall),
                          // const SizedBox(height: 5),
//                           // Display author information if available
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       );
//     } else {
//       return SizedBox(); // Return an empty widget or handle the case when the category is not found.
//     }
//   }
// }

// class SelfCare extends StatelessWidget {
//   final List<GuideCategory> categories;

//   SelfCare({required this.categories});

//   @override
//   Widget build(BuildContext context) {
//     final selfCareCategory = categories
//         .firstWhere((category) => category.name == 'Self Care');

//     if (selfCareCategory.name.isNotEmpty) {
//       return Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Self Care',
//                   style: Theme.of(context)
//                       .textTheme
//                       .headlineSmall!
//                       .copyWith(fontWeight: FontWeight.bold),
//                 ),
//                 Text('More', style: Theme.of(context).textTheme.bodyLarge),
//               ],
//             ),
//             const SizedBox(height: 20),
//             SizedBox(
//               height: 250,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: selfCareCategory.subcategories.length,
//                 itemBuilder: (context, index) {
//                   var subcategory = selfCareCategory.subcategories[index];
//                   return Container(
//                     width: MediaQuery.of(context).size.width * 0.5,
//                     margin: const EdgeInsets.only(right: 10),
//                     child: InkWell(
//                       onTap: () {
//                         // Handle subcategory tap
//                       },
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           // You can use your ImageContainer here with subcategory.imageUrl
//                           const SizedBox(height: 10),
//                           Text(
//                             subcategory.title,
//                             maxLines: 2,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .bodyLarge!
//                                 .copyWith(
//                                     fontWeight: FontWeight.bold, height: 1.5),
//                           ),
//                           const SizedBox(height: 5),
//                           Text(
//                               'Articles Videos and more',
//                               style: Theme.of(context).textTheme.bodySmall),
//                           const SizedBox(height: 5),
//                           // Display author information if available
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       );
//     } else {
//       return SizedBox(); // Return an empty widget or handle the case when the category is not found.
//     }
//   }
// }

// Widget labelContainer(String labelVal) {
//   return Container(
//     height: 30.0,
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: <Widget>[
//         Text(
//           labelVal,
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
//         ),
//         Text(
//           'MORE',
//           style: TextStyle(
//               color: Colors.green,
//               fontWeight: FontWeight.bold,
//               fontSize: 18.0),
//         ),
//       ],
//     ),
//   );
// }

// Widget imageSection(String title, String link) {
//   return Column(
//     children: <Widget>[
//       Container(
//         height: 100.0,
//         width: 100.0,
//         decoration: new BoxDecoration(
//           image: DecorationImage(
//             image: new NetworkImage(link),
//             fit: BoxFit.fill,
//           ),
//           borderRadius: BorderRadius.circular(20.0),
//         ),
//       ),
//       SizedBox(
//         height: 10.0,
//       ),
//       Text(
//         title,
//         style: TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//             fontSize: 16.0),
//       ),
//     ],
//   );
// }

// Widget appsRecommendedContainer() {
//   return Container(
//     height: 160.0,
//     child: ListView(
//       scrollDirection: Axis.horizontal,
//       children: <Widget>[
//         // Add your recommended apps using the imageSection widget here
//       ],
//     ),
//   );
// }

// Widget appsContainer() {
//   return Container(
//     height: 160.0,
//     child: ListView(
//       scrollDirection: Axis.horizontal,
//       children: <Widget>[
//         // Add your apps using the imageSection widget here
//       ],
//     ),
//   );
// }

// class CategoryCardWidget extends StatelessWidget {
//   final GuideCategory category;

//   CategoryCardWidget({Key? key, required this.category}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: AppPalette.backgroundColor,
//       elevation: 14.0,
//       shadowColor: Color(0x802196F3),
//       child: Column(
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: labelContainer(category.name), // Use the category name
//           ),
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 for (var subcategory in category.subcategories)
//                   imageSection(subcategory.title, subcategory.link),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }