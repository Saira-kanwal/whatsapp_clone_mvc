import 'package:flutter/material.dart';
import 'package:whatsapp_mvc_clone/views/request_account_info.dart';
import 'package:whatsapp_mvc_clone/views/security_notifications_view.dart';
import 'package:whatsapp_mvc_clone/views/two_step_verification_view.dart';

import 'change_number_view.dart';
import 'delete_my_account_view.dart';

class AccountView extends StatelessWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecurityNotificationView()));
              },
              leading: const Icon(Icons.security_sharp),
              title: const Text("Security Notifications"),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const TwoStepVerificationView()));
              },
              leading: const Icon(Icons.domain_verification_sharp),
              title: const Text("Two-step verification"),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChangeNumberView()));
              },
              leading: const Icon(Icons.send_to_mobile_sharp),
              title: const Text("Change number"),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const RequestAccountInfoView()));
              },
              leading: const Icon(Icons.file_present_sharp),
              title: const Text("Request account info"),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const DeleteAccountView()));
              },
              leading: const Icon(Icons.delete),
              title: const Text("Delete my account"),
            ),

          ],
        ),
      ),
    );
  }
}
