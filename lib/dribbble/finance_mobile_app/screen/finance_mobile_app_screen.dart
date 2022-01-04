import 'package:dribbble/dribbble/finance_mobile_app/widgets/lets_start_text_button.dart';
import 'package:dribbble/media_query_data_extension.dart';
import 'package:flutter/material.dart';

class FinanceMobileScreen extends StatelessWidget {
  const FinanceMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black,
          ),
          Positioned(
            top: 0.0,
            child: Placeholder(
              color: Colors.white,
              fallbackHeight: MediaQuery.of(context).halfHeight,
            ),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).halfWidth,
                      child: const Text(
                        "Find the way to manage your finances",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const LetsStartTextButton()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
