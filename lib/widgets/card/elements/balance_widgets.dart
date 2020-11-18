import 'package:flutter/material.dart';

class BalanceWidgets extends StatelessWidget {
  const BalanceWidgets({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '30,635 SAR',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Balance',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ],
    );
  }
}