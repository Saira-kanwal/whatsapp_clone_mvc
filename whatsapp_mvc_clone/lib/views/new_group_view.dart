import 'package:flutter/material.dart';
import 'package:whatsapp_mvc_clone/controller/contact_controller.dart';

class NewGroupView extends StatefulWidget {
  const NewGroupView({Key? key}) : super(key: key);

  @override
  State<NewGroupView> createState() => _NewGroupViewState();
}

class _NewGroupViewState extends State<NewGroupView> {
  var controller = ContactController();
  loadData() async {
    controller.getContacts();
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
    controller.getContacts();
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Column(
          children:  const [
            Text("New Group",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
            SizedBox(height: 5,),
            Text("  Add Participants",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300
            ),)
          ],
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search,size: 32,),
          ),
          const SizedBox(width: 15,)
        ],
      ),
      body:
      ListView.builder(
        itemCount: controller.contacts.length,
          itemBuilder: (context, index){
            return ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey,
                foregroundImage: NetworkImage(controller.contacts[index].imageUrl.toString()),
                child: const Icon(Icons.person,color: Colors.white,),
              ),
              title: Text(
                controller.contacts[index].userName.toString(),
                style: const TextStyle(fontWeight: FontWeight.w500,),
              ),
              subtitle: Text(controller.contacts[index].about.toString()),
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: const Icon(Icons.arrow_forward,size: 25,),
      ),
    );

  }
}
