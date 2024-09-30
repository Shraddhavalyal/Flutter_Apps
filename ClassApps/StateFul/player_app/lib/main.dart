import 'package:flutter/material.dart';

void main(){
  runApp(const PlayerApp());
}
class PlayerApp extends StatefulWidget{
  const PlayerApp({super.key});
  @ override
  State<PlayerApp> createState()=>_PlayerAppState();
}
class _PlayerAppState extends State<PlayerApp>{
  int _counter = 0;

  List<String> playerList = <String>[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrqP8eUtjjTYJ35igoL7eJW_hoNBeYB52JAQ&s"
    "https://p1.hiclipart.com/preview/405/744/15/cricket-india-rohit-sharma-india-national-cricket-team-west-indies-cricket-team-england-cricket-team-sports-international-cricket-council-team-sport-png-clipart.jpg"
    "https://c.ndtvimg.com/2024-09/kmh89fd8_ms-dhoni-bcci_625x300_15_September_24.jpg?im=FeatureCrop,algorithm=dnn,width=806,height=605"
    "https://documents.iplt20.com/ipl/IPLHeadshot2024/9.png"
  ];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"Players",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Players App"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                playerList[_counter],
                height: 300,
              )

            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(_counter<playerList.length-1){
              _counter++;
            }else{
              _counter = 0;
            }setState((){});
          },
          tooltip: "Increment",
          child:const Icon(Icons.add),
        ),
      ),
    );
  }
}