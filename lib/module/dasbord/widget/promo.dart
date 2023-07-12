import 'package:flutter/widgets.dart';

class Promo extends StatelessWidget {
  const Promo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Promo",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
