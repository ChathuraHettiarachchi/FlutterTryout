import 'package:chat_app/models/ChatMessage.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AudioMessage extends StatelessWidget {
  final ChatMessage message;

  const AudioMessage({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding * 0.75, vertical: kDefaultPadding / 2.5),
      decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(message.isSender ? 1 : 0.1),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: message.isSender ? Colors.white : kPrimaryColor,
          ),
          Expanded(
              child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 2,
                color: message.isSender
                    ? Colors.white.withOpacity(0.7)
                    : kPrimaryColor.withOpacity(0.4),
              ),
              Positioned(
                left: 0,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                      color: message.isSender ? Colors.white : kPrimaryColor,
                      shape: BoxShape.circle),
                ),
              )
            ],
          )),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          Text(
            '0.37',
            style: TextStyle(
                fontSize: 12, color: message.isSender ? Colors.white : null),
          )
        ],
      ),
    );
  }
}
