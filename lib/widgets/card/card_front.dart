import 'package:flutter/material.dart';

import 'package:banking_card/widgets/card/elements/balance_widgets.dart';
import 'package:banking_card/widgets/card/elements/person_data_widgets.dart';
import 'package:banking_card/widgets/card/elements/top_widgets.dart';

class CardFront extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(

            width: double.infinity,
            height: 400,
            child: Image.asset(
              'assets/CardImage.jpg',
            ),
          ),
          Column(children: [
            TopWidgets(),
            SizedBox(height: 80),
            BalanceWidgets(),
            SizedBox(height: 50),
            PersonDateWidget(),
          ],)




        ],
      ),
    );
  }
}

