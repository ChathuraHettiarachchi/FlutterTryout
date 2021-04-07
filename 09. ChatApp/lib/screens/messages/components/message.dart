import 'package:chat_app/models/ChatMessage.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'audio_message.dart';
import 'text_message.dart';
import 'video_message.dart';

class Message extends StatelessWidget {
  final ChatMessage message;

  const Message({
    Key key,
    this.message,
  }) : super(key: key);

  Widget messageContent(ChatMessage message) {
    switch (message.messageType) {
      case ChatMessageType.text:
        return TextMessage(
          message: message,
        );
        break;
      case ChatMessageType.audio:
        return AudioMessage(
          message: message,
        );
      case ChatMessageType.video:
        return VideoMessage(
          message: message,
        );
      default:
        return SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage('assets/images/user_2.png'),
            ),
            SizedBox(
              width: kDefaultPadding / 2,
            )
          ],
          messageContent(message),
          if (message.isSender) MessageStatusDot(message: message)
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  final ChatMessage message;

  const MessageStatusDot({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status){
      switch(status){
        case MessageStatus.not_sent:
          return kErrorColor;
          break;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyText1.color.withOpacity(0.1);
          break;
        case MessageStatus.viewed:
          return kPrimaryColor;
          break;
        default:
          return Colors.transparent;
      }
    }
    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding / 2),
      height: 12,
      width: 12,
      decoration: BoxDecoration(color: dotColor(message.messageStatus), shape: BoxShape.circle),
      child: Icon(
        message.messageStatus == MessageStatus.not_sent ? Icons.close:Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
