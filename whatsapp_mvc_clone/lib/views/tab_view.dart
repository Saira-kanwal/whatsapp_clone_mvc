import 'package:flutter/material.dart';
import 'package:whatsapp_mvc_clone/views/views.dart';

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  int? tabController;
  // @override
  // void initState() {
  //   tabController(vsync: this, length:4, ini)
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Whatsapp"),
          automaticallyImplyLeading: false,
          foregroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed:(){},
                icon: const Icon(Icons.camera_alt_outlined,)
            ),
           const  SizedBox(width: 5,),
            IconButton(
                onPressed:(){},
                icon: const Icon(Icons.search,)
            ),
            const SizedBox(width: 5,),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert,),
              splashRadius: 20,
            onSelected: (val){
              if(val == "group"){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const NewGroupView()));
              }
                else if(val == "broadcast"){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const NewBroadcastView()));
                }
                else if(val == "linked devices"){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const LinkedDeviceView()));
                }
                else if(val == "starred message"){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const StarredMessagesView()));
                }
                else if(val == "setting"){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const SettingsView()));
                }
            },
              itemBuilder: (context) {
                return const [
                  PopupMenuItem(
                    value: "group",
                      child: Text("New group")
                  ),
                  PopupMenuItem(
                      value: "broadcast",
                      child: Text("Broadcast")
                  ),
                  PopupMenuItem(
                      value: "linked devices",
                      child: Text("Linked devices")
                  ),
                  PopupMenuItem(
                      value: "starred message",
                      child: Text("Starred message")
                  ),
                  PopupMenuItem(
                      value: "setting",
                      child: Text("Settings")
                  ),
                ];
              },

            )

          ],
          bottom: const TabBar(
            //controller: tabController,
              tabs:[
                Tab(
                   // text: "Community",
                   icon: Icon(Icons.group),
                   ),
                Tab(
                   text: "CHATS",
                   ),
                Tab(
                   text: "STATUS",
                   ),
                Tab(
                   text: "CALLS",
                   ),

          ]
        ),
        ),
        body:
        const TabBarView(
          //controller: tabController,
          children: [
            CommunityView(),
            ChatsView(),
            StatusView(),
            CallsView(),
          ],

        ),
      ),
    );
  }
}
