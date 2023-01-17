import 'package:flutter/material.dart';

class ChangeNumberNextView extends StatelessWidget {
  const ChangeNumberNextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change number"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children:  [
            const SizedBox(height: 15,),
            const Text("Enter your old phone number with country code:",
                style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)
            ),
            const SizedBox(height: 15,),
            Row(
              children: const [
                SizedBox(
                  width: 80,
                  child:
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: "+  92"
                      ),
                    ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 200,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        labelText: "phone number"
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            const Text("Enter your new phone number with country code:",
                style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)
            ),
            const SizedBox(height: 15,),
            Row(
              children: const [
                SizedBox(
                  width: 80,
                  child:
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: "+  92"
                    ),
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 200,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        labelText: "phone number"
                    ),
                  ),
                ),
              ],
            ),

            const Spacer(),
            Center(
              child: ElevatedButton(
                  onPressed: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChangeNumberNextView()));
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
