import 'package:flutter/material.dart';

class AddBalanceFloatingActionButton extends StatelessWidget {
  const AddBalanceFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: const FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: null,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
