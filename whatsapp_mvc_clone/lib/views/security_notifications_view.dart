import 'package:flutter/material.dart';

class SecurityNotificationView extends StatefulWidget {
  const SecurityNotificationView({Key? key}) : super(key: key);

  @override
  State<SecurityNotificationView> createState() => _SecurityNotificationViewState();
}

class _SecurityNotificationViewState extends State<SecurityNotificationView> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Security notifications"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.teal.shade300,
                child: const Icon(Icons.lock,color: Colors.white,size: 55,),
              ),
            ),
            const Text("Your chats and calls are private",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
            Text(
              style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w500),
                "End-to-end encryption keeps your personal message and calls between you and the people you choose, Not even Whatsapp can read or listen to them. This includes your :"
            ),

            Row(
              children: [
                const Icon(Icons.comment_sharp,color: Colors.grey,),
                const SizedBox(width: 15,),
                Text(
                  style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w500),
                  "Text and voice messages"
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.call,color: Colors.grey),
                const SizedBox(width: 15,),
                Text(
                    style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w500),
                    "Audio and video calls"
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.attach_file_sharp,color: Colors.grey),
                const SizedBox(width: 15,),
                Text(
                    style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w500),
                    "Photos, videos and documents"
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.location_on,color: Colors.grey),
                const SizedBox(width: 15,),
                Text(
                    style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w500),
                    "Location sharing"
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.data_saver_off_sharp,color: Colors.grey,),
                const SizedBox(width: 15,),
                Text(
                    style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w500),
                    "Status updates"
                ),
              ],
            ),
            TextButton(
                onPressed: (){},
                child: const Text(
                    style: TextStyle(color: Colors.green,fontSize: 16),
                    "Learn more"
                )
            ),
            const Divider(thickness: 1.2,),
            ListTile(
              onTap: (){
                isOn == false ? isOn = true : isOn = false;
                setState(() {

                });
              },
              title: const Text(
                  "Show security notifications on this device",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)
              ),
              subtitle: Text(
                  style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w500),
                  "Get notified when your security code changes for a contact's phone in an end-to-end encrypted chat. If you have multiple devices, this setting must be enabled on each device where you want to get notifications."
              ),
              trailing:  Switch(
                value: isOn,
                onChanged: (val)
                {
                  setState(() {
                    isOn = val;
                  });
                },
                activeColor: Colors.teal,
                inactiveThumbColor:Colors.grey,
                inactiveTrackColor: Colors.grey.shade200,
                activeTrackColor: Colors.teal.shade200,
              ),
              ),
          ],
        ),
      ),
    );
  }
}
