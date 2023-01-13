import 'package:flutter/material.dart';
import 'package:whatsapp_mvc_clone/controller/chat_controller.dart';
import 'package:whatsapp_mvc_clone/views/views.dart';

class ChatsView extends StatefulWidget {
  const ChatsView({Key? key}) : super(key: key);

  @override
  State<ChatsView> createState() => _ChatsViewState();
}

class _ChatsViewState extends State<ChatsView> {
  var controller = ChatController();
  loadData() async
  {
    await controller.getChats();
    setState(() {

    });
  }
  @override
  void initState() {
    loadData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    controller.getChats();
    return Scaffold(
      body:
      ListView.builder(
        itemCount: controller.chats.length,
          itemBuilder: (context, index){
            return ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey,
                foregroundImage: NetworkImage(controller.chats[index].imageUrl.toString()),
                child: const Icon(Icons.person,color: Colors.white,),
              ),
              title: Text(controller.chats[index].userName.toString()),
              subtitle: Text(controller.chats[index].lastMessage.toString()),
              trailing: Text(controller.chats[index].lastSeen.toString()),
              onTap: (){

              },
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(context)=>const LinkedDeviceView()));
        },
      ),
    );
  }
}
