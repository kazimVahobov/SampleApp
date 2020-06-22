import 'package:SampleApp/widgets/clickable_card.dart';
import 'package:SampleApp/widgets/store_card.dart';
import 'package:SampleApp/widgets/unclickable_card.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/store_data.model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          'BILLZ',
          style: TextStyle(
              fontSize: 20.0, color: Color.fromARGB(255, 156, 171, 200)),
        ),
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  UnClickableCard(icon: Icons.attach_money, label: '8150 UZS'),
                  UnClickableCard(
                      icon: Icons.date_range, label: '03.10.18 29.12.18')
                ],
              ),
            ),
            Container(
              height: 250,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ClickableCard(icon: Icons.attach_money, label: 'Валюта'),
                  ClickableCard(icon: Icons.sort, label: 'Сортировка'),
                  ClickableCard(icon: Icons.sort_by_alpha, label: 'Магазины')
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Container(
                  height: 200,
                  child: ListView.builder(
                      reverse: true,
                      itemCount: stores.length,
                      itemBuilder: (BuildContext context, int index) {
                        return StoreCard(data: stores[index]);
                      })),
            )
          ],
        ),
      ),
    );
  }
}
