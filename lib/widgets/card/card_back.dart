import 'dart:io';

import 'package:flutter/material.dart';

class CardBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            child: Image.asset(
              'assets/CardBack.png',
            ),
          ),
        ],
      ),
    );
  }
}
