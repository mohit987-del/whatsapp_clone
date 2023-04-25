import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:wac/utils/colors.dart';
import 'package:wac/widgets/widgets.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.map});
  final Map map;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(map["name"]),
        // leading:
        //   CircleAvatar(
        //     backgroundImage: NetworkImage(map["profilePic"]),
        //   )
        // ,
      ),
      body: Column(
        children:  [
          Expanded(
            child: ChatList(),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Write a msg...",
              filled: true,
              fillColor: mobileChatBoxColor,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.emoji_emotions,
                  color: Colors.grey,
                ),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.camera_alt,color: Colors.grey,),
                    Icon(Icons.attach_file,color: Colors.grey,),
                    Icon(Icons.currency_rupee,color: Colors.grey,),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
