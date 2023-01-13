import 'package:flutter/material.dart';
import 'package:whatsapp_mvc_clone/controller/call_controller.dart';

import 'audio_call_view.dart';

class CallsView extends StatefulWidget {
  const CallsView({Key? key}) : super(key: key);

  @override
  State<CallsView> createState() => _CallsViewState();
}

class _CallsViewState extends State<CallsView> {
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
      body:
      ListView.builder(
          itemCount: controller.calls.length,
          itemBuilder: (context, index){
            return ListTile(
              leading: CircleAvatar(
                radius: 25,
                foregroundImage: NetworkImage(controller.calls[index].imageUrl.toString()),
                backgroundColor: Colors.grey.shade400,
                child: const Icon(Icons.person,color: Colors.white,),
              ),
              title: Text(controller.calls[index].userName.toString()),
              subtitle: Row(
                children: [
                  Icon(
                    controller.calls[index].callStatus =="Received" ||  controller.calls[index].callStatus== "Missed"?
                    Icons.call_received : Icons.call_made,
                    color:  controller.calls[index].callStatus== "Missed" ? Colors.red : Colors.green,
                    size: 15,
                  ),
                  const SizedBox(width: 5,),
                  Text(controller.calls[index].dateTime.toString())
                ],
              ),
              trailing:
                  InkWell(
                    splashColor: Colors.grey.shade100,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AudioCallView(call: controller.calls[index],)));
                      },
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Icon(
                        controller.calls[index].callType=="Video"? Icons.video_call : Icons.call,
                        color: Colors.green,
                      )
                    ),
                  ),
            );
          }
      ),
    );
  }
}
