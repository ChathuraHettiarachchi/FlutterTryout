import 'package:chat_app/components/primary_button.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/screens/chats/chat_screen.dart';
import 'package:flutter/material.dart';

class SigninOrSignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: Stack(
          children: [
            Container(
              decoration:
              BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter:
                  ColorFilter.mode(Colors.black.withOpacity(0.2),
                      BlendMode.dstATop),
                  image: AssetImage(
                    'assets/images/crop.jpeg',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Image.asset(
                    MediaQuery.of(context).platformBrightness == Brightness.light
                        ? 'assets/images/Logo_light.png'
                        : 'assets/images/Logo_dark.png',
                    height: 146,
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  PrimaryButton(text: 'Sign In', press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()))),
                  SizedBox(
                    height: kDefaultPadding * 1.5,
                  ),
                  PrimaryButton(
                    text: 'Sign Up',
                    press: () {},
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
