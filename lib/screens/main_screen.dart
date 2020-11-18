import 'file:///C:/Users/onlyt/AndroidStudioProjects/banking_card/lib/widgets/card/card_back.dart';
import 'package:flip_card/flip_card.dart';
import 'file:///C:/Users/onlyt/AndroidStudioProjects/banking_card/lib/widgets/card/card_front.dart';
import 'package:banking_card/widgets/transaction_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Center(
              child: Container(
                  height: 45, child: Image.asset('assets/Avatar.png'))),
          centerTitle: true,
          title: Center(
              child: Container(height: 33, child: Image.asset('assets/X.png'))),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Center(
                child: Container(
                    height: 33, child: Image.asset('assets/Chat.png'))),
          ],
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 20),
              FlipCard(
                front: CardFront(),
                back: CardBack(),
              ),
              //CardFront(),
              SizedBox(height: 50),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  children: [
                    Container(
                      color: Colors.black12,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Transactions',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Analytics',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Settings',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
//
                    Container(
                      height: 270,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) => TransactionCard(),
                        itemCount: 100,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

/*ClipRRect(
borderRadius: BorderRadius.circular(20),
child: DefaultTabController(

length: 3,
child: Column(
children: [
TabBar(


tabs: [

Tab(icon: Text('Transactions', style: TextStyle(color: Colors.black),)),
Tab(icon: Text('Analytics', style: TextStyle(color: Colors.black),)),
Tab(icon: Text('Settings', style: TextStyle(color: Colors.black),)),

],
),
Container(
color: Colors.grey,
height: 350,
child: ListView.builder(
scrollDirection: Axis.vertical,
itemBuilder: (context, index) => TransactionCard(),
itemCount: 100,
),
),
],
),
),
),*/
