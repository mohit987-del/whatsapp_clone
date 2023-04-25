import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:wac/utils/colors.dart';

class MyMsg extends StatelessWidget {
  const MyMsg({super.key,required this.message,required this.date});
  final String  message;
  final String date;
  

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: messageColor,
          margin: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 5,
                  left: 10,
                  right: 30,
                  bottom: 20,
                ),
                child: Text(message,style: TextStyle(fontSize: 16),),
              ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Row(
                  children: [
                    Text(date,style: TextStyle(fontSize: 13,color: Colors.white60),),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.done,size: 20,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
