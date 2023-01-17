import 'package:flutter/material.dart';

import '../../controller/status_controller.dart';

class StatusView extends StatefulWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  var controller = StatusController();
  loadData() async
  {
    await controller.getStatus();
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
    controller.getStatus();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
                  ListTile(
                    leading: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.grey.shade400,
                          child: const Icon(Icons.person,color: Colors.white,),
                        ),
                        const Positioned(
                            bottom: -1,
                            right: -1,
                            child:
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 12,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.green,
                                child: Icon(Icons.add,color: Colors.white,size: 15,),
                              ),
                            )
                        )
                      ],
                    ),
                    title: const Text("My Status",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: const Text("Yesterday, 5:02 PM"),
                    trailing: const Icon(Icons.more_horiz,color: Colors.green,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 20,
                      width: MediaQuery.of(context).size.width,
                      child:  const Text("Recent updates",style: TextStyle(color: Colors.grey),),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.status.length,
                      itemBuilder: (context, index){
                        return ListTile(
                          leading:
                          CircleAvatar(
                            radius: 28,
                            backgroundColor: controller.status[index].isStatusSeen == "true" ? Colors.white : Colors.green,
                            child: CircleAvatar(
                              radius: 25,
                              foregroundImage: NetworkImage(controller.status[index].statusImg.toString()),
                              backgroundColor: Colors.grey.shade400,
                              child: const Icon(Icons.group,color: Colors.white,),
                            ),
                          ),
                          title: Text(controller.status[index].userName.toString()),
                          subtitle: Text(controller.status[index].time.toString()),
                        );
                      }
                  )
          ],
        ),
      )
    );
  }
}
