import 'package:chat_app/models/message_model.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class CustomBubble extends StatelessWidget {
  const CustomBubble({Key? key, required this.message}) : super(key: key);
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(33),
            topRight: Radius.circular(33),
            bottomRight: Radius.circular(33),
          ),
        ),
        child: Text(
          message.message,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class CustomBubbleForFriend extends StatelessWidget {
  const CustomBubbleForFriend({Key? key, required this.message})
      : super(key: key);
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color(0xFF016C86),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(33),
            topRight: Radius.circular(33),
            bottomLeft: Radius.circular(33),
          ),
        ),
        child: Text(
          message.message,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
