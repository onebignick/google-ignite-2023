// import 'dart:convert';
// import 'package:cloud9/function.dart';
import 'package:cloud9/components/post/post_text.dart';
import 'package:cloud9/components/post/post_title.dart';
import 'package:cloud9/components/post/post_username.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context){
    Color backgroundColor=const Color(0xFFF2F2FA);
    Color usernameColor=const Color(0xFF49454F);
    Color textColor=const Color(0xFF49454F);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Enliven"),
      ),
      body: Container(
        color: backgroundColor,
        child: Center(
            child: Flex(
              direction: Axis.vertical,
              children: [
                const PostUsername(text: "handymandy"),
                const PostTitle(text: "First time caregiver tips"),
                const PostText(text: "I'm overwhelmed because"),
                Text(
                  "Roles and responsibilities",
                  style: TextStyle(
                    color: textColor
                  )
                )
              ],
            )
          )
        )
      );
  }  
}

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