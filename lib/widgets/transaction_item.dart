import 'package:flutter/material.dart';
import 'package:banking_card/screens/main_screen.dart';


class TransactionItem extends StatelessWidget {
  final Color color;
  final String asset;

  TransactionItem(this.color, this.asset);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 1),
      height: 65,
      decoration: BoxDecoration(
          border: Border(
        left: BorderSide(color: color, width: 5),
        bottom: BorderSide(color: Colors.grey.withOpacity(0.3), width: 1),
      )),
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.only(left: 8),
              child: SizedImage(35, '$asset')),
          Container(
            //alignment: Alignment.topLeft,
            height: 37,
            padding: EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Winktales Paint',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text('12.04 PM. POS', style: TextStyle(fontSize: 12))
              ],
            ),
          ),
          SizedBox(width: 130),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(top: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              Text('-1290 SAR', style: TextStyle(fontSize: 16)),
              Container(
                  height: 15,
                  width: 15,
                  child: FittedBox(child: Icon(Icons.description)))
            ]),
          )
        ],
      ),
    );
  }
}


