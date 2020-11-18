import 'package:flutter/material.dart';

class BottomWidgets extends StatelessWidget {
  const BottomWidgets({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(flex: 1, child: Image.asset('assets/Visa.png')),
          Flexible(flex: 2, child: SizedBox()),
          Flexible(flex: 2, child: FloatingActionButton(child: Icon(Icons.add))),// Switch(value: null, onChanged: null)
        ],
      ),
    );
  }
}