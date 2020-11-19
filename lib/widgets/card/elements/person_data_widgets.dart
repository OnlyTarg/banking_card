import 'package:flutter/material.dart';

class PersonDateWidget extends StatelessWidget {
  const PersonDateWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      child: Column(
        children: [
          Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 8, bottom: 5),
              child: Text(
                'Sarra Abdulaah\nXXXX XXXX XXXX 1720\nExp 06/25',
                style: TextStyle(color: Colors.white, fontSize: 14),
              )),
        ],
      ),
    );
  }
}
