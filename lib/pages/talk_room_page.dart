import 'package:flutter/material.dart';
import 'package:flutter_firebase/model/message.dart';

class TalkRoomPage extends StatefulWidget {
  final String name;
  const TalkRoomPage(this.name, {super.key});

  @override
  _TalkRoomPageState createState() => _TalkRoomPageState();
}

class _TalkRoomPageState extends State<TalkRoomPage>{
  List<Message> messageList = [
    Message(message: "あいう", isMe: true, sendTime: DateTime(2022,1,1,12,0)),
    Message(message: "あいう", isMe: true, sendTime: DateTime(2022,1,1,12,0)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child:
            Text(widget.name, style: TextStyle(color: Colors.white)), //widgetをつける
          ),
          backgroundColor: Colors.teal
      ),
      body: ListView.builder(
          itemCount: messageList.length,
          itemBuilder: (context,index){
            return Row(
              children: [
                Text(messageList[index].message);
                Text(messageList[index].);
              ],
            );
      }),
    );
  }

}
