import 'package:flutter/material.dart';
import 'package:whatsapp_mvc_clone/models/message_model.dart';
import 'package:whatsapp_mvc_clone/views/auth_view.dart';

import 'models/chat_model.dart';

class ChatDetailsView extends StatelessWidget {
  final Chat chat;
  const ChatDetailsView({Key? key, required this.chat}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 55,
        leading:
        InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Row(
            children: const [
              Icon(Icons.arrow_back),
              CircleAvatar(
                radius: 15,
              )
            ],
          ),

        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(chat.userName.toString(),style: const TextStyle(fontWeight: FontWeight.bold),),
            Text("last seen today at ${chat.lastSeen}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
          ],
        ),
        // title: const Text("Message"),
        actions: [
          _circleButton(icon:const  Icon(Icons.video_call),
              onTap: (){}
          ),
          _circleButton(icon:const  Icon(Icons.phone),
              onTap: (){}
          ),
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            splashRadius: 20,
              onSelected: (val){
              // condition based rout
              if(val == "contact"){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const AuthView()));
              }

              },
              itemBuilder: (context)
                  {
                    return [
                      const PopupMenuItem(
                        value: "contact",
                        //not-working
                          child: Text("View Contact"),
                      ),
                      const PopupMenuItem(
                        value: "report",
                        //not-working
                        child: Text("Report"),
                      ),
                      const PopupMenuItem(
                        value: "block",
                        //not-working
                        child: Text("Block"),
                      ),
                      const PopupMenuItem(
                        value: "search",
                        //not-working
                        child: Text("Search"),
                      ),
                      const PopupMenuItem(
                        value: "mute",
                        //not-working
                        child: Text("Mute Notifications"),
                      ),
                      const PopupMenuItem(
                        value: "disappearing",
                        //not-working
                        child: Text("Disappearing Message"),
                      ),
                      const PopupMenuItem(
                        value: "wall",
                        //not-working
                        child: Text("Wall Paper"),
                      ),
                      PopupMenuItem(
                        value: "more",
                        //not-working
                        child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:const [
                            Text("More"),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,)
                          ],
                        ),
                      )
                    ];
                  }
          )
        ],
      ),
      body: ListView.builder(
        itemCount: chat.messages!.length,
          itemBuilder: (context, index){
            return _messageCard(
                context: context,
                message: chat.messages![index]
            );
          }
      ),
    );
  }
  //Function based custom widget
  Widget _circleButton({required Icon icon, required Function() onTap})
  {
    return IconButton(
        onPressed: onTap,
        icon: icon);
  }
  Widget _messageCard({required BuildContext context, required Message message}){
    return Row(
      mainAxisAlignment: message.isSend == true? MainAxisAlignment.end: MainAxisAlignment.start,
      children: [
    Container(
    width: MediaQuery.of(context).size.width*0.75,
    padding:  const EdgeInsets.all(10),
    margin:  const EdgeInsets.all(8),
    decoration: BoxDecoration(
    color: message.isSend == true? Colors.teal : Colors.grey,
    borderRadius: BorderRadius.circular(8)
    ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(message.messageText.toString(),style: const TextStyle(color: Colors.white),),
          const SizedBox(height: 3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(message.time.toString(), style: const TextStyle(color: Colors.white),),
              const SizedBox(height: 3,),
              message.isSend == false? const SizedBox.shrink():
              message.status == true?  const Icon(Icons.done_all,color: Colors.blue): const Icon(Icons.done_all,color: Colors.grey,)
            ],
          )


        ],
      ),
    )
      ],
    );
  }
}



//
// More >
//  Media,links, and docs
// Clear chat
// Export chat
// Add shortcut
//pop-up menu button