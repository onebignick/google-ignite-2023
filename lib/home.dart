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
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 10), // Adjust horizontal padding
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
              )
            ),
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
              border: Border.all(color: AppPalette.lightPurple), // Optional border styling
              borderRadius: BorderRadius.all(Radius.circular(10.0)), // Optional border radius
            ),
            margin: EdgeInsets.fromLTRB(0, 10.0, 10.0, 0), // Optional margin
            child: Padding(padding: EdgeInsets.all(20.0),
              child: PostWidget(
                username: post.username,
                title: post.title,
                caption: post.caption,
                avatarImagePath: post.avatarImagePath,
                tags: post.tags,
              ),
          ));
        },
      ),
    );
  }
}

// import 'dart:convert';
// import 'package:cloud9/function.dart';
// import '/components/components.dart';
// import 'package:flutter/material.dart';
// import '/themes/main_theme.dart';

// class Home extends StatelessWidget {
//   const Home({Key? key}):super(key:key);

//   @override
//   Widget build(BuildContext context){
//     // Color textColor=const Color(0xFF49454F);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Enliven"), //according to the figma we don't need this though
//         backgroundColor: AppPalette.darkPurple,
//       ),
//       body: Container(
//         color: AppPalette.backgroundColor,
//         child:  const Center(
//           child: Flex(
//             direction: Axis.vertical,
//             children: [
//               Search1(),
//               PostUsername(text: "handymandy"),
//               PostTitle(text: "First time caregiver tips"),
//               PostText(text: "I'm overwhelmed because I'm overwhelmed because I feel like I'm doing everything wrong. My main priority is to make sure my mother is totally comfortable and pain free while she is in her transition phase. I feel guilty when she's sleeping comfortably and I have to move her to get her cleaned up or shift her position to prevent sores and she weeps in pain. It's the toughest part about all this. I love caring for her because I love her, I'm so busy with things that I have become somewhat disassociated (I still cry but I know I haven't processed things fully yet) and when all this is over, on top of all the other bad feelings, I deeply fear the guilt I'll have for causing her that pain. I truly feel seeing her decline is traumatizing me. If anyone could offer some helpful tips, I would be very grateful."),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
//                 children: [
//                   Wrap(
//                     spacing: 4.0, 
//                     runSpacing: 4.0,// Adjust the spacing between tags as needed.
//                     children: [
//                       PostTags(text: "Roles & responsibility"),
//                       PostTags(text: "Stress & burnout"),
//                       PostTags(text: "Relationships"),
//                       PostTags(text: "Self-care"),
//                       // Add more tags as needed.
//                     ],
//                   )
//                 ],
//               )
//             ],
//           )
//         )
//       ),
//       );
//     }  
// }



// class Home extends StatefulWidget{
//   const Home({Key? key}):super(key:key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home>{
//   String url="";
//   String output="Initial Output";
//   var data;
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar:AppBar(title:Text("Simple Flask App")),
//       body: Center(
//         child: Column(
//         children: [
//           TextField(
//             onChanged: (value){
//               url='http://127.0.0.1:5000/api?query=' + value.toString();
//               // emulator: http://10.0.2.2:5000
//               // prod: http://127.0.0.1:5000
//             },
//           ),
//           TextButton(onPressed:() async {
//             data = await fetchdata(url);
//             var decoded = jsonDecode(data);
//             setState((){
//               output=decoded['output'];
//             });
//           }, child: Text("Fetch ASCII Value")),
//           Text(output)
//         ],))
//     );
//   }
// }