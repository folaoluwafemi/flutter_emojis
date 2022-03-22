import 'package:flutter/material.dart';
import 'package:flutter_emojis/screens/emoji_screen.dart';

void main() {
  runApp(const Emojis());
}

class Emojis extends StatelessWidget {
  const Emojis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: EmojiScreen.id,
      onGenerateRoute: (settings) {
        if (settings.name == EmojiScreen.id) {
          return MaterialPageRoute(
            builder: (context) => const EmojiScreen(),
          );
        } else {
          return MaterialPageRoute(
            builder: (context) => const SafeArea(
              child: Scaffold(
                body: Center(
                  child: Text('You navigated to the wrong route'),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
