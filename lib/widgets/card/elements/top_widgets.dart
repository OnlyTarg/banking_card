import 'package:flutter/material.dart';

class TopWidgets extends StatefulWidget {


  TopWidgets({
    Key key,
  }) : super(key: key);

  @override
  _TopWidgetsState createState() => _TopWidgetsState();
}

class _TopWidgetsState extends State<TopWidgets> {
  bool isChanging = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          SizedBox(
            width: 205,
          ),
          Container(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text('Freeze',style: TextStyle(color: Colors.white),),
          ),
          Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: Switch(
                  activeColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      isChanging = !isChanging;
                    });
                  },
                  value: isChanging)),
        ],
      ),
    );
  }
}
