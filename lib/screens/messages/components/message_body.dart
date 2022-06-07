import 'package:doctors_chat/constants.dart';
import 'package:flutter/material.dart';

import '../../../models/chat.dart';
import '../../../models/chat_message.dart';
import './chat_input_field.dart';
import './text_message.dart';
import './message.dart';

class MessageBody extends StatelessWidget {
  const MessageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, i) => Message(
                message: demeChatMessages[i],
              ),
            ),
          ),
        ),
        ChatInputField(),
      ],
    );
  }
}
