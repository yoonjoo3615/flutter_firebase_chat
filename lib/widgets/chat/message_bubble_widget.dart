import 'package:flutter/material.dart';

class MessageBubbleWidget extends StatelessWidget {
  MessageBubbleWidget(this.message, this.isMe, {Key? key}) : super(key: key);


  final String message;
  final bool isMe;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: isMe ? Theme.of(context).primaryColorLight : Colors.grey[200],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: !isMe? Radius.circular(0):Radius.circular(12),
              bottomRight: isMe? Radius.circular(0):Radius.circular(12),
            ),
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
