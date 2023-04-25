import 'package:flutter/material.dart';
import 'package:wac/utils/colors.dart';

class WebSearch extends StatelessWidget {
  const WebSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 10),
      
      height: MediaQuery.of(context).size.height*0.05,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: backgroundColor,
      ),
      child:const TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          filled: true,
          fillColor: searchBarColor,
          hintText: "Search",
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10),),
          ),
        ),
        
        style: TextStyle(

        ),
        


      ),

    );
  }
}