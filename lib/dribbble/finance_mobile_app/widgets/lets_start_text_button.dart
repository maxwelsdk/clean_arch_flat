import 'package:dribbble/dribbble/finance_mobile_app/screen/home_screen.dart';
import 'package:flutter/material.dart';

class LetsStartTextButton extends StatelessWidget {
  const LetsStartTextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
      ),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        },
        child: const Text(
          "Let's Start",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
