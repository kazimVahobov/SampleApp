import 'package:SampleApp/styles/card_label.dart';
import 'package:flutter/material.dart';

class UnClickableCard extends StatefulWidget {
  final IconData icon;
  final String label;

  UnClickableCard({this.icon, this.label});

  @override
  _UnClickableCardState createState() => _UnClickableCardState();
}

class _UnClickableCardState extends State<UnClickableCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Container(
          height: 58,
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(widget.icon, color: Colors.blue),
                title: Text(
                  widget.label,
                  style: CardLabelStyle.cardLabelStyle(context),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
