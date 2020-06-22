import 'package:SampleApp/models/store_data.model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class StoreCard extends StatefulWidget {

  final StoreData data;

  StoreCard({this.data});

  @override
  _StoreCardState createState() => _StoreCardState();
}

class _StoreCardState extends State<StoreCard> {

  _getTagColor(String tag) {
    if (tag == 'red') return Colors.red;
    else if (tag == 'blue') return Colors.blue;
    else if (tag == 'green') return Colors.green;
  }

  _getSum(String sum, String currency) {
    return sum + ' ' + currency;
  }

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colors.grey[400],
      strokeWidth: 1,
      dashPattern: [8, 4],
      child: Card(
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        child: InkWell(
          child: Container(
            padding: EdgeInsets.fromLTRB(20.0, 5.0, 10.0, 5.0),
            height: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.fiber_manual_record,
                        color: _getTagColor(widget.data.tag), size: 17.0),
                    SizedBox(width: 5.0),
                    Text(widget.data.label,
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: <Widget>[
                    Icon(Icons.fiber_manual_record,
                        color: Colors.transparent, size: 18.0),
                    SizedBox(width: 5.0),
                    Text(_getSum(widget.data.sum, widget.data.currency),
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
