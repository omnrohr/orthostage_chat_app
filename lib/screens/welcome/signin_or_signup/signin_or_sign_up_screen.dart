import 'package:doctors_chat/components/primary_button.dart';
import 'package:doctors_chat/constants.dart';
import 'package:doctors_chat/screens/chats/chat_screen.dart';
import 'package:flutter/material.dart';

class SignInOrSignUpScreen extends StatelessWidget {
  const SignInOrSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Spacer(
                flex: 1,
              ),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? 'assets/images/orthostage.png'
                    : 'assets/images/Logo_dark.png',
                width: MediaQuery.of(context).size.width * 0.65,
              ),
              Spacer(),
              PrimaryButton(
                text: "Sign in",
                press: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ChatScreen(),
                  ),
                ),
              ),
              SizedBox(
                height: kDefaultPadding * 1.5,
              ),
              PrimaryButton(
                text: "Sign up",
                press: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ChatScreen(),
                  ),
                ),
                color: Theme.of(context).colorScheme.secondary,
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
