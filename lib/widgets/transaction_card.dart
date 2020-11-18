import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5),
      child: ListTile(
        contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
        title: Text("Winktales Paint"),
        leading: CircleAvatar(
          backgroundColor: Colors.white,
            radius: 60,
            child: Image.network(
                'https://thumbs.dreamstime.com/b/%D0%BB%D0%B8%D0%BD%D0%B8%D1%8F-%D0%B7%D0%BD%D0%B0%D1%87%D0%BE%D0%BA-%D0%B2%D0%B5%D0%BA%D1%82%D0%BE%D1%80%D0%B0-%D0%B8%D0%BD%D1%81%D1%82%D1%80%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2-%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B8-114907287.jpg')),
        subtitle: Text('12.04 PM. POS'),
        trailing: Text('-1290 SAR')
      ),
    );
  }
}
