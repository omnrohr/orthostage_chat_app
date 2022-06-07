import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/chat_message.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 0.75, vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(message.isSender ? 1 : 0.1),
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          message.text,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: message.isSender
                  ? Colors.white
                  : Theme.of(context).textTheme.bodyText1!.color),
        ));
  }
}
