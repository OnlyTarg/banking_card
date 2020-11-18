import 'package:flutter/material.dart';

class TopWidgets extends StatelessWidget {
  const TopWidgets({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Flexible(flex: 3,child: Image.file(File('assets/Xpence.png'))),
          Flexible(flex: 3, child: Image.asset('assets/Xpence.png')),
          Flexible(
            flex: 2,
            child: SizedBox(),
          ),
          Flexible(flex: 2, child: Switch(value: true)),

          // Switch(value: null, onChanged: null)
        ],
      ),
    );
  }
}