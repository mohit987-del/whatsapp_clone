import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:wac/screens/screens.dart';
import 'package:wac/utils/colors.dart';

import '../utils/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10,
      ),
      child: ListView.builder(itemBuilder: (cxt,i){
        
        return Column(
          
          children: [
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ChatScreen(map: info[i]) ));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: ListTile(
                  
                  tileColor: backgroundColor,
                  title: Text(info[i]["name"].toString(), style: TextStyle(fontSize: 18,overflow: TextOverflow.ellipsis),) ,
                  subtitle: Text(info[i]["message"].toString(),style: TextStyle(fontSize: 15,overflow: TextOverflow.ellipsis),),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(info[i]["profilePic"].toString()),
                  ),
                  trailing: Text(info[i]["time"].toString(),style: TextStyle(color: Colors.grey),),
                ),
              ),
            ),
            Divider(thickness: 1,),
          ],
        );
      },
      shrinkWrap: true,
      itemCount: info.length),
    );
  }
}
