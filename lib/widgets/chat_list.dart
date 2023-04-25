import 'package:flutter/material.dart';
import 'package:wac/utils/info.dart';
import 'package:wac/widgets/widgets.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, i) {
        if(messages[i]["isMe"] ==true){
          return MyMsg(message: messages[i]["text"].toString(), date: messages[i]["time"].toString());
        }else{
          return YourMsg(message: messages[i]["text"].toString(), date: messages[i]["time"].toString());
        }
      },
      itemCount: messages.length,
    );
  }
}
