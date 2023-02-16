import 'package:flutter/material.dart';
import 'package:whatsapp_mvc_clone/controller/call_controller.dart';
import 'package:whatsapp_mvc_clone/models/message_model.dart';
import 'package:whatsapp_mvc_clone/views/audio_call_view.dart';
import 'package:whatsapp_mvc_clone/views/auth_view.dart';
import 'models/chat_model.dart';

class ChatDetailsView extends StatefulWidget {
  final Chat chat;
  const ChatDetailsView({Key? key, required this.chat}) : super(key: key);

  @override
  State<ChatDetailsView> createState() => _ChatDetailsViewState();
}

class _ChatDetailsViewState extends State<ChatDetailsView> {
  var controller = CallController();

  loadData()async{
    await controller.getCalls();
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
    controller.getCalls();
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
             Text(widget.chat.userName.toString(),style: const TextStyle(fontWeight: FontWeight.bold),),
            Text("last seen today at ${widget.chat.lastSeen}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
          ],
        ),
        // title: const Text("Message"),
        actions: [
          _circleButton(icon:const  Icon(Icons.video_call),
              onTap: (){}
          ),
          _circleButton(icon:const  Icon(Icons.phone),
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context) => AudioCallView(call:)));
            },
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
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: widget.chat.messages!.length,
                  itemBuilder: (context, index){
                    return _messageCard(
                        context: context,
                        message: widget.chat.messages![index]
                    );
                  }
              )
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade100
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        // TextFormField(
                        //   style: const TextStyle(
                        //   fontSize: 16,
                        //   color: Color(0xff9C9EB9)),
                        //   onChanged: (value) {
                        //   },
                        //   decoration: const InputDecoration(
                        //   contentPadding: EdgeInsets.symmetric(
                        //   vertical: 8.0, horizontal: 0.0),
                        //   hintText: 'Message...',
                        //   hintStyle: TextStyle(
                        //   color: Color(0xff8E8E93),
                        //   ),
                        //   focusedBorder: InputBorder.none,
                        //   enabledBorder: InputBorder.none,
                        //   errorBorder: InputBorder.none,
                        //   disabledBorder: InputBorder.none
                        //   )
                        // ),
                          TextFormField()
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      )
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
      //crossAxisAlignment: message.isSend == true? CrossAxisAlignment.end: CrossAxisAlignment.start,
      children: [
    Container(
    width: MediaQuery.of(context).size.width*0.75,
    padding:  const EdgeInsets.all(15),
    margin:  const EdgeInsets.all(5),
    decoration: BoxDecoration(
    color: message.isSend == true? Colors.teal : Colors.black.withOpacity(0.5),
    borderRadius: message.isSend == true? const BorderRadius.only(
        topLeft: Radius.circular(20.0),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20)
    ) :
    const BorderRadius.only(
        topRight: Radius.circular(20.0),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20)
    )
    ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(message.messageText.toString(),style: const TextStyle(color: Colors.white,fontSize: 15)),
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