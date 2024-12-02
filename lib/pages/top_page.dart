import 'package:flutter/material.dart';
import 'package:flutter_firebase/pages/setting_profile_page.dart';
import 'package:flutter_firebase/pages/talk_room_page.dart';
import '../model/user.dart';

class TopPage extends StatefulWidget {
  const TopPage({super.key});

  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage>{
  List<User> userList = [
    User(name: "田中", uid: "abc",
        imagePath: "https://yt3.googleusercontent.com/ngVd2-zv5o3pGUCfiVdZXCHhnq_g1Lo1Y8DbrmB9O8G7DG0IWUQJgsacqsI_LRvZE8JTsbQIuQ=s900-c-k-c0x00ffffff-no-rj",
        lastMassage: "元気？"),
    User(name: "佐藤", uid: "abc",
        imagePath: "https://yt3.googleusercontent.com/ngVd2-zv5o3pGUCfiVdZXCHhnq_g1Lo1Y8DbrmB9O8G7DG0IWUQJgsacqsI_LRvZE8JTsbQIuQ=s900-c-k-c0x00ffffff-no-rj",
        lastMassage: "Hello"),
    User(name: "西田", uid: "abc",
        imagePath: "https://yt3.googleusercontent.com/ngVd2-zv5o3pGUCfiVdZXCHhnq_g1Lo1Y8DbrmB9O8G7DG0IWUQJgsacqsI_LRvZE8JTsbQIuQ=s900-c-k-c0x00ffffff-no-rj",
        lastMassage: "ナマステ"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
              child:
              Text("CHAT APP", style: TextStyle(color: Colors.white)),
              ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => SettingProfilePage(),
            ));
          },
              icon: const Icon(Icons.settings))
        ],
        backgroundColor: Colors.teal
      ),
      body: ListView.builder(
          itemCount: userList.length,
          itemBuilder: (context, index){
            return InkWell(
              onTap: (){
                print("タッチ検知");
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => TalkRoomPage(userList[index].name)
                ));
              },
              child: SizedBox(
              height: 70,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0), //上下の場合はvertical
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: userList[index].imagePath == null
                          ? null // nullなら表示しない
                          : NetworkImage(userList[index].imagePath!), //あるなら表示+ 非nullを保証（NetworkImageはString型を受け取るので）
                      // NetworkImage(userList[index].imagePath!),
                      //imagePathがnullにならないようにすることが保証されているなら、!（null安全演算子）を使用してnullでないことを明示

                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(userList[index].name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      Text(userList[index].lastMassage!, style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ],
            ),
          ),
        );
        }
      ),
    );
  }
}
