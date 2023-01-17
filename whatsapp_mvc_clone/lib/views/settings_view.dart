import 'package:flutter/material.dart';
import 'package:whatsapp_mvc_clone/views/account_view.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView(
        children:   [
          ListTile(
            onTap: (){
              print("ListTile Tap");
            },
            leading: const CircleAvatar(
              radius: 26,
              backgroundColor: Colors.grey,
              foregroundImage: NetworkImage(""),
              child: Icon(Icons.person,color: Colors.white,),
            ),
            title: const Text("Saira Kanwal"),
            subtitle: const Text("Hey there! I am using whatsapp."),
            trailing: InkWell(
              onTap: (){
                print("InkWell Tap");
              },
              splashColor: Colors.grey.shade100,
              child:const SizedBox(
                height: 30,
                width: 30,
                child: Image(image: AssetImage("assets/images/bar_code.png")),
              )
            ),
          ),
          const Divider(),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const AccountView()));
            },
            leading: const Icon(Icons.key),
            title: const  Text("Account"),
            subtitle: const  Text("Security notification,change number") ,
          ),
          ListTile(
            onTap: (){},
            leading: const Icon(Icons.lock),
            title: const  Text("Privacy"),
            subtitle: const  Text("Block contacts, disappearing messages") ,
          ),
          ListTile(
            onTap: (){},
            leading: const Icon(Icons.comment_sharp),
            title: const  Text("Chats"),
            subtitle: const  Text("Theme, wallpapers, chat history") ,
          ),
          ListTile(
            onTap: (){},
            leading: const Icon(Icons.notifications),
            title: const  Text("Notifications"),
            subtitle: const  Text("Message, group & call tones") ,
          ),
          ListTile(
            onTap: (){},
            leading: const Icon(Icons.data_saver_off_sharp),
            title: const  Text("Storage and data"),
            subtitle: const  Text("Network usage, auto-download") ,
          ),
          ListTile(
            onTap: (){},
            leading: const Icon(Icons.language),
            title: const  Text("App languages"),
            subtitle: const  Text("English (phone's language") ,
          ),
          ListTile(
            onTap: (){},
            leading: const Icon(Icons.help_outline_sharp),
            title: const  Text("Help"),
            subtitle: const  Text("Help center, contact us, privacy policy") ,
          ),
          ListTile(
            onTap: (){},
            leading: const Icon(Icons.group),
            title: const  Text("Invite a friend")
          ),
          const SizedBox(height: 20,),
          const Center(child: Text("from")),
          const SizedBox(height: 10,),
          const Center(child: Text(
            "Saira Kanwal",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
          )
          ),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }
}
