import 'package:chat_app/constants.dart';
import 'package:chat_app/screens/messages/components/body.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          BackButton(),
          CircleAvatar(backgroundImage: AssetImage('assets/images/user_2.png'),),
          SizedBox(width: kDefaultPadding * 0.75,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kristin Wotson', style: TextStyle(fontSize: 16),),
              Text('Active 3m ago', style: TextStyle(fontSize: 12),)
            ],
          )
        ],
      ),
      actions: [
        IconButton(icon: Icon(Icons.local_phone), onPressed: (){}),
        IconButton(icon: Icon(Icons.videocam), onPressed: (){}),
        SizedBox(width: kDefaultPadding/2,)
      ],
    );
  }
}