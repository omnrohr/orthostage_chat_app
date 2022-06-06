import 'package:doctors_chat/screens/chats/components/chat_body.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // leading: Icon(Icons.arrow_back_ios),
        title: Text('Chats'),
      ),
      body: ChatBody(),
    );
  }
}
