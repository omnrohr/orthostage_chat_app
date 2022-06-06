import 'package:doctors_chat/constants.dart';
import 'package:doctors_chat/screens/welcome/signin_or_signup/signin_or_sign_up_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Spacer(
            flex: 4,
          ),
          Image.asset('assets/images/welcome_image.png'),
          Image.asset(
            'assets/images/orthostage.png',
            height: 100,
          ),
          Text(
            textAlign: TextAlign.center,
            'Welcome To our Orthostage\nchat app',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'WE CARE FOR YOUR SMILE',
            style: TextStyle(
                color: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .color
                    ?.withOpacity(0.64),
                fontWeight: FontWeight.bold),
          ),
          Spacer(
            flex: 2,
          ),
          FittedBox(
            child: TextButton(
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                      builder: (context) => SignInOrSignUpScreen())),
              child: Row(
                children: [
                  Text(
                    'Skip',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color
                            ?.withOpacity(0.8)),
                  ),
                  SizedBox(
                    width: kDefaultPadding / 4,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .color
                        ?.withOpacity(0.8),
                  ),
                ],
              ),
            ),
          ),
          Spacer(
            flex: 4,
          ),
        ],
      )),
    );
  }
}
