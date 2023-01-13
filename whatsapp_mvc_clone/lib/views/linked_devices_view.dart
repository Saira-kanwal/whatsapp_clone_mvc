import 'package:flutter/material.dart';

class LinkedDeviceView extends StatelessWidget {
  const LinkedDeviceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Linked Devices"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.30,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Image.asset("assets/images/linked_devices.png"),
            )
          ),
          const Text(
              "Use Whatsapp on other devices",
            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              height: 45,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: (){},
                  child: const Text("LINK A DEVICE",style: TextStyle(fontSize: 16),)
              )
            ),
          ),

          Row(
            children: [
              const SizedBox(width: 10,),
              const Icon(Icons.lock,color: Colors.grey,size: 15,),
              const SizedBox(width: 10,),
              const Text("Your personal message are"),
              TextButton(onPressed: (){},
                  child: const Text("end-to-end encrypted",style: TextStyle(color: Colors.green),)
              )
            ],
          ),
          Row(
            children: const [
              SizedBox(width: 35,),
              Text("on all your devices.")
            ],
          ),
          const SizedBox(height: 21,),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.30,
                //height: double.maxFinite,
                color: Colors.grey.shade100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Use Whatsapp on web, desktop or other devices"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("without keeping your phone online."),
                        TextButton(
                            onPressed: (){},
                            child: const Text("Learn more",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w600),)
                        )
                      ],
                    )
                  ],
                )
              )
            ],
          )
        ],
      ),

    );
  }
}
