import 'package:flutter/material.dart';
import 'package:wac/utils/colors.dart';

import '../widgets/widgets.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: const [
                  WebProfile(),
                  WebSearch(),
                  ContactList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/backgroundImage.png"),
              ),
            ),
            child: Column(
              children: [
                Bar(),
                Expanded(child: ChatList()),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: backgroundColor,
    );
  }
}
