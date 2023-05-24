import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConversationList extends StatefulWidget {
  String name;
  String messageText;
  String imageURL;
  String time;
  bool isMessageRead;
  ConversationList(
      {super.key,
      required this.name,
      required this.messageText,
      required this.imageURL,
      required this.isMessageRead,
      required this.time});

  @override
  State<ConversationList> createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 10,
        bottom: 10,
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.imageURL),
                  maxRadius: 30,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: Container(
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        widget.messageText,
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey.shade600,
                            fontWeight: widget.isMessageRead
                                ? FontWeight.bold
                                : FontWeight.normal),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
          Text(
            widget.time,
            style: TextStyle(
              fontSize: 12,
              fontWeight:
                  widget.isMessageRead ? FontWeight.bold : FontWeight.normal,
            ),
          )
        ],
      ),
    );
  }
}
