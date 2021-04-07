import 'package:chat_app/models/ChatMessage.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class VideoMessage extends StatelessWidget {
  final ChatMessage message;
  const VideoMessage({Key key, this.message}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width *0.5,
      child: AspectRatio(
        aspectRatio: 1.6,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset('assets/images/Video Place Here.png'),
            ),
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  shape: BoxShape.circle
              ),
              child: Icon(Icons.play_arrow, size: 18, color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}
