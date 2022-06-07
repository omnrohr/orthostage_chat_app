import 'package:flutter/material.dart';

import '../../../constants.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 32,
              color: kPrimaryColor.withOpacity(0.08)),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Icon(
              Icons.mic,
              color:
                  MediaQuery.of(context).platformBrightness == Brightness.light
                      ? kPrimaryColor
                      : Colors.white,
            ),
            const SizedBox(
              width: kDefaultPadding,
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.07),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.sentiment_satisfied_alt_outlined,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color
                          ?.withOpacity(0.64),
                    ),
                    const SizedBox(width: kDefaultPadding / 3),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Type message', border: InputBorder.none),
                      ),
                    ),
                    Icon(
                      Icons.attach_file,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color
                          ?.withOpacity(0.64),
                    ),
                    const SizedBox(width: kDefaultPadding / 3),
                    Icon(
                      Icons.camera_alt_outlined,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color
                          ?.withOpacity(0.64),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
