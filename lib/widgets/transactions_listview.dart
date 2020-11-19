import 'package:flutter/material.dart';

import 'package:banking_card/widgets/transaction_item.dart';

class TransactionsListView extends StatelessWidget {
  const TransactionsListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder:(context, index) {
           return index%2==0?TransactionItem(Colors.red,'assets/work.jpg') : TransactionItem(Colors.yellow,'assets/Car.png');
          }, //(context, index) => TransactionCard(),
          itemCount: 100,
        ),
      ),
    );
  }
}