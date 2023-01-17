import 'package:flutter/material.dart';

import 'change_number_next_view.dart';

class ChangeNumberView extends StatelessWidget {
  const ChangeNumberView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change number"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.greenAccent.shade100,
                radius: 70,
                child: Icon(Icons.sim_card,size:90,color: Colors.teal.shade300),
              ),
            ),
           const  SizedBox(height: 30),
            const Text("Changing your phone number will migrate",
                style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)
            ),
            const  SizedBox(height: 3),
            const Text("your account info, groups & settings.",
                style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)
            ),
            const  SizedBox(height: 20),
            Text(
                "Before proceeding, please confirm that you are able to receive SMS or calls at your new number",
                style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w500),
            ),
            const  SizedBox(height: 20),
            Text(
              "if you have both a new phone & a new number, first change your number on your old phone.",
              style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChangeNumberNextView()));
                  },
                  child: const Text("NEXT",style: TextStyle(color: Colors.white),)
              ),
            )
          ],
        ),
      ),
    );
  }
}
