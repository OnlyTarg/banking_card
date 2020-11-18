import 'package:flutter/material.dart';

import 'package:banking_card/widgets/card/elements/balance_widgets.dart';
import 'package:banking_card/widgets/card/elements/bottom_widgets.dart';
import 'package:banking_card/widgets/card/elements/person_data_widgets.dart';
import 'package:banking_card/widgets/card/elements/top_widgets.dart';


class CardFront extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          child: Column(
            children: [
              TopWidgets(),
              SizedBox(height: 60),
              BalanceWidgets(),
              SizedBox(height: 30),
              PersonDateWidget(),
              SizedBox(height: 10),
              BottomWidgets(),
            ],
          ),
          width: 260,
          height: 360,
          color: Colors.blue,
        ),
      ),
    );
  }
}








