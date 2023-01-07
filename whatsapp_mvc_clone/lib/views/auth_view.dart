import 'package:flutter/material.dart';
import 'package:whatsapp_mvc_clone/views/tab_view.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // if you want no splash on tab then use gesture detector instead of InkWell
      InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const TabView()));
        },
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: const [
                Icon(Icons.lock,color: Colors.green,size: 35,),
                SizedBox(height: 20,),
                Text("Whatsapp Locked", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),),
                Spacer(),
                Icon(Icons.fingerprint,size: 50,color: Colors.grey,),
                SizedBox(height: 20,),
                Text("Touch the fingerprint sensor"),
                Spacer(),
              ],
            ),
          ),
        ),
      )
    );
  }
}
