import 'package:flutter/material.dart';
import 'package:whatsapp_mvc_clone/models/calls_model.dart';

class AudioCallView extends StatelessWidget {
  final Calls call;
  const AudioCallView({Key? key, required this.call}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 30,),
          CircleAvatar(
            backgroundImage: NetworkImage(call.imageUrl.toString()),
            radius: 50,
          ),
          const SizedBox(height: 20,),
          Text(call.userName.toString(), style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),
          const SizedBox(height: 20,),
          const Text("Calling"),
          const Spacer(),
          Container(
            width: double.maxFinite,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10))
            ),
            child: Column(
              children: [
                const Icon(Icons.keyboard_control_key, size: 40,),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.volume_up),
                        splashRadius: 25,
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.video_camera_back),
                      splashRadius: 25,
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.mic_off),
                      splashRadius: 25,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      child: IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.call_end),
                        splashRadius: 25,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
