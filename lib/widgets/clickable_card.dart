import 'package:SampleApp/styles/card_label.dart';
import 'package:flutter/material.dart';

class ClickableCard extends StatefulWidget {
  final IconData icon;
  final String label;

  ClickableCard({this.icon, this.label});

  @override
  _ClickableCardState createState() => _ClickableCardState();
}

class _ClickableCardState extends State<ClickableCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: InkWell(
          child: Container(
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(widget.icon, color: Colors.grey),
                SizedBox(height: 3.0),
                Text(
                  widget.label,
                  style: CardLabelStyle.cardLabelStyle(context),
                )
              ],
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
