import 'package:flutter/material.dart';

class RequestAccountInfoView extends StatelessWidget {
  const RequestAccountInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Request account info"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.greenAccent.shade100,
                child: const Icon(Icons.file_present_sharp,color: Colors.teal,size: 70,),
              ),
            ),
            const SizedBox(height: 30),
            const Text("Create a report of your Whatsapp account",
                style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)
            ),
            const Text("information and settings, which you can",
                style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)
            ),
            const Text("access or port to another app. This report",
                style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)
            ),
            Row(
              children:  [
                const Text("does not include your messages.",
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)
                ),
                InkWell(
                  onTap: (){},
                  child: const Text("Learn more",style: TextStyle(color: Colors.cyan,fontSize: 17,fontWeight: FontWeight.w500),),
                )
              ],
            ),
            const SizedBox(height: 30),
            const Divider(thickness: 1.2),
            ListTile(
              onTap: (){},
              leading: const Icon(Icons.file_present_sharp),
              title: const Text("Request report",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)),
            ),
            const Divider(thickness: 1.2)
          ],
        ),
      ),
    );
  }
}
