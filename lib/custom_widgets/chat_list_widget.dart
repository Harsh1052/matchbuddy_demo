import 'package:flutter/material.dart';

import 'horizontal_list_widget.dart';

class ChatListWidget extends StatelessWidget {
  final int index;
  final String title;
  final String subtitle;
  final int message;
  final String time;
  final VoidCallback onTap;

  ChatListWidget(
      {required this.index,
      required this.message,
      required this.title,
      required this.time,
      required this.subtitle,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: OnlineFriendWidget(
        isChatDesign: true,
        index: index,
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
      ),
      subtitle: index == 0
          ? Text(
              "Typing....",
              style: TextStyle(
                color: Colors.blue,
              ),
            )
          : Text(
              subtitle,
              style: TextStyle(
                  color: index.isEven ? Colors.grey : Colors.black,
                  fontWeight:
                      !index.isEven ? FontWeight.w800 : FontWeight.w400),
            ),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("time"),
          message == 0
              ? Icon(Icons.done_all_outlined)
              : Container(
                  // padding: EdgeInsets.all(3.0),
                  width: 20.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent[100], shape: BoxShape.circle),
                  child: Center(
                    child: Text(
                      message.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
