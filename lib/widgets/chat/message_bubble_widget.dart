import 'package:flutter/material.dart';

class MessageBubbleWidget extends StatelessWidget {
  MessageBubbleWidget(this.message);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).highlightColor,
            borderRadius: BorderRadius.circular(12),
          ),
          width: 140,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Text(
            message,
            style: TextStyle(color: Colors.black54),
          ),
        ),
      ],
    );
  }
}
