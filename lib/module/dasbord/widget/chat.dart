import 'package:flutter/widgets.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Chat",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
