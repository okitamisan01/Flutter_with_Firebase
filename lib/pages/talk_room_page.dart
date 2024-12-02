import 'package:flutter/material.dart';
import 'package:flutter_firebase/model/message.dart';
import 'package:intl/intl.dart' as intl;

class TalkRoomPage extends StatefulWidget {
  final String name;
  const TalkRoomPage(this.name, {super.key});

  @override
  _TalkRoomPageState createState() => _TalkRoomPageState();
}

class _TalkRoomPageState extends State<TalkRoomPage>{
  List<Message> messageList = [
    Message(message: "あいう", isMe: true, sendTime: DateTime(2022,1,1,12,0)),
    Message(message: "かきく", isMe: false, sendTime: DateTime(2022,1,1,12,0)),
    Message(message: "あああああああああああああああああああああああああああああああああああああああああああ", isMe: false, sendTime: DateTime(2022,1,1,12,0)),

    Message(message: "あいう", isMe: true, sendTime: DateTime(2022,1,1,12,0)),
    Message(message: "かきく", isMe: false, sendTime: DateTime(2022,1,1,12,0)),
    Message(message: "あああああああああああああああああああああああああああああああああああああああああああ", isMe: false, sendTime: DateTime(2022,1,1,12,0)),

    Message(message: "あいう", isMe: true, sendTime: DateTime(2022,1,1,12,0)),
    Message(message: "かきく", isMe: false, sendTime: DateTime(2022,1,1,12,0)),
    Message(message: "あああああああああああああああああああああああああああああああああああああああああああ", isMe: false, sendTime: DateTime(2022,1,1,12,0)),

    Message(message: "あいう", isMe: true, sendTime: DateTime(2022,1,1,12,0)),
    Message(message: "かきく", isMe: false, sendTime: DateTime(2022,1,1,12,0)),
    Message(message: "あああああああああああああああああああああああああああああああああああああああああああ", isMe: false, sendTime: DateTime(2022,1,1,12,0)),

    Message(message: "あいう", isMe: true, sendTime: DateTime(2022,1,1,12,0)),
    Message(message: "かきく", isMe: false, sendTime: DateTime(2022,1,1,12,0)),
    Message(message: "あああああああああああああああああああああああああああああああああああああああああああ", isMe: false, sendTime: DateTime(2022,1,1,12,0)),

    Message(message: "あいう", isMe: true, sendTime: DateTime(2022,1,1,12,0)),
    Message(message: "かきく", isMe: false, sendTime: DateTime(2022,1,1,12,0)),
    Message(message: "あああああああああああああああああああああああああああああああああああああああああああ", isMe: false, sendTime: DateTime(2022,1,1,12,0)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
          title: Center(
            child:
            Text(widget.name, style: TextStyle(color: Colors.white)), //widgetをつける
          ),
          backgroundColor: Colors.teal
      ),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 60.0),
                child: ListView.builder(
                            physics: const RangeMaintainingScrollPhysics(), //スクロール可能なのは、あとから
                            shrinkWrap: true, //少ないときは↑から表示
                            reverse: true, //下から上に
                            itemCount: messageList.length,
                            itemBuilder: (context,index){
                return Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: index == 0 ? 10 : 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    textDirection: messageList[index].isMe ? TextDirection.rtl : TextDirection.ltr,
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.6),
                        decoration: BoxDecoration(
                            color: messageList[index].isMe ? Colors.green : Colors.white, //True : False　// Box Decorationを使う場合はこっちにカラーを書かないとエラーになる
                            borderRadius: BorderRadius.circular(15)

                        ),
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                       // color: messageList[index].isMe ? Colors.green : Colors.white, //True : False
                        child: Text(messageList[index].message),
                      ),
                      Text(intl.DateFormat("HH:mm").format(messageList[index].sendTime)),
                    ],
                  ),
                );
                        }),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                  color: Colors.white,
                  height: 60,

                    child: Row(
                      children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.only(left: 30),

                            ),

                          ),
                        )),
                        IconButton(onPressed: (){

                          
                        },
                            icon: Icon(Icons.send)
                        )
                      ],
                    ),
                ),
                  Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).padding.bottom,
                  ),
                ],
              )
          ],
            ),
      ),
    );
  }

}
