import 'package:flutter/material.dart';
import 'package:whatsapp_mvc_clone/controller/contact_controller.dart';


class NewBroadcastView extends StatefulWidget {
  const NewBroadcastView({Key? key}) : super(key: key);

  @override
  State<NewBroadcastView> createState() => _NewBroadcastViewState();
}

class _NewBroadcastViewState extends State<NewBroadcastView> {
  final _controller = ContactController();
  loadData() async {
    _controller.getContacts();
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
    _controller.getContacts();
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text("New broadcast",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
            const SizedBox(height: 5,),
            Text(
              "0 of ${_controller.contacts.length.toString()} selected",
              style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w300
            ),)
          ],
        ),
        actions:[
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.search,size: 32,),
          ),
          const SizedBox(width: 15,)
        ],
      ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
            child: Text(
                "Only contacts with +923021234567 in their address book will receive your broadcast message",
                style: TextStyle(color: Colors.grey.shade600,),textAlign: TextAlign.center,
            ),
          ),
          const Divider(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.80,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: _controller.contacts.length,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: const CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey,
                      // foregroundImage: NetworkImage(controller.contacts[index].imageUrl.toString()),
                      child: Icon(Icons.person,color: Colors.white,),
                    ),
                    title: Text(
                      _controller.contacts[index].userName.toString(),
                      style: const TextStyle(fontWeight: FontWeight.w500,),
                    ),
                    subtitle: Text(_controller.contacts[index].about.toString()),
                  );
                }
            ),
          ),
        ],
      ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>const NewGroupView()));
          },
          child: const Icon(Icons.arrow_forward,size: 25,),
        )
    );


  }
}
