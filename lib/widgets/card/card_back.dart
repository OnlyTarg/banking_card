import 'dart:io';

import 'package:flutter/material.dart';

class CardBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          child: Column(
            children: [],
          ),
          width: 260,
          height: 360,
          color: Colors.blue,
        ),
      ),
    );
  }
}
