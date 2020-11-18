import 'package:flutter/material.dart';

class PersonDateWidget extends StatelessWidget {
  const PersonDateWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 8, bottom: 5),
            child: Text(
              'Sarra Abdulaah',
              style: TextStyle(color: Colors.white, fontSize: 14),
            )),
        Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 8, bottom: 5),
            child: Text(
              'XXXX XXXX XXXX 1720',
              style: TextStyle(color: Colors.white, fontSize: 14),
            )),
        Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 8, bottom: 5),
            child: Text(
              'Exp 06/25',
              style: TextStyle(color: Colors.white, fontSize: 14),
            )),
      ],
    );
  }
}