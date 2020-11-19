import 'package:flutter/material.dart';

import 'package:flip_card/flip_card.dart';

import 'package:banking_card/widgets/card/card_back.dart';
import 'package:banking_card/widgets/card/card_front.dart';
import 'package:banking_card/widgets/transactions_listview.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: Container(
          height: 50.0,
          width: 50.0,
          child: FittedBox(
            child: FloatingActionButton(
                child: Icon(Icons.search), onPressed: () {}),
          ),
        ),
        appBar: AppBar(
            centerTitle: true,
            leading: SizedImage(45, 'assets/Avatar.png'),
            title: SizedImage(33, 'assets/X.png'),
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [SizedImage(33, 'assets/Chat.png')]),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 0,
              backgroundColor: Colors.white,
              expandedHeight: 380,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 400,
                      child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Image.asset('assets/BackGround.png')),
                    ),
                    FlipCard(
                      front: CardFront(),
                      back: CardBack(),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Column(
                    children: [
                      Container(
                        color: Colors.grey.withOpacity(0.3),
                        height: 50,
                        child: TabBar(
                          tabs: [
                            Text(
                              'Transactions',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Analytics',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Settings',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      TransactionsListView(),
                    ],
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class SizedImage extends StatelessWidget {
  final double height;
  final String asset;

  SizedImage(this.height, this.asset);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(height: height, child: Image.asset('$asset')));
  }
}

class TabCard extends StatelessWidget {
  final String title;

  TabCard(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Text(
        '$title',
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
    );
  }
}
