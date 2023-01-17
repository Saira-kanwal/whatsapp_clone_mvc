import 'package:flutter/material.dart';

class TwoStepVerificationView extends StatelessWidget {
  const TwoStepVerificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Two-step verification"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child:
              Stack(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.greenAccent.shade100,
                    child: Icon(Icons.domain_verification_outlined,size:60,color: Colors.teal.shade300,),
                  ),
                  Positioned(
                      right: -1,
                      bottom: -1,
                      child: CircleAvatar(
                        radius: 33,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.teal.shade300,
                          child: const Icon(Icons.done,color: Colors.white,size: 50,),
                        ),
                      )
                  ),
                ]
              ),
            ),
           const SizedBox(height: 20,),
            Text(
                style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w500),
                "Two-step verification is enabled. You'll need to enter"),
            const SizedBox(height: 3),
            Text(
                style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w500),
                "your PIN when registering your phone number with"),
            const SizedBox(height: 3),
            Text(
                style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w500),
                "Whatsapp again"),
            const Divider(thickness: 1.2,),
            ListTile(
              onTap:  () async
              {
                var res = await _showDialogue(context);
                debugPrint(res.toString());
              },
              leading: const Icon(Icons.cancel,color: Colors.grey,),
              title: const Text("Disable"),
            ),
            ListTile(
              onTap: (){},
              leading:  const Icon(Icons.domain_verification_sharp,color: Colors.grey),
              title: const Text("Change Pin")
            ),

            ListTile(
              onTap: (){},
              leading: const Icon(Icons.email,color: Colors.grey,),
              title: const Text("Change email address")
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.20)

          ],
        ),
      ),
    );
  }
  _showDialogue(BuildContext context) async
  {
    return await showDialog(
        context: context,
        builder: (context)
        {
          return AlertDialog(

            title: Text(
                "Disable two-step verification",
                style: TextStyle(color: Colors.grey.shade600,fontSize: 17,fontWeight: FontWeight.w500),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
            ),
            actions: [
              TextButton(
                  onPressed: (){
                    Navigator.pop(context, true);
                  },
                  child: const Text("Cancel")
              ),
              TextButton(
                  onPressed: (){
                    Navigator.pop(context, false);
                  },
                  child: const Text("Disable")
              ),
            ],
          );
        }
    );
  }
}
