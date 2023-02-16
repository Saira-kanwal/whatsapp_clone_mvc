import 'package:flutter/material.dart';
import 'package:whatsapp_mvc_clone/views/auth_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    _statTimer();
    super.initState();
  }
  _statTimer()
  {
    Future.delayed(const Duration(seconds: 2),_openScreen );
  }
  _openScreen()
  {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const AuthView()));
  }
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body:
      Center(
        child:
        Icon(Icons.facebook,size: 50,color: Colors.green,),
      ),
    );
  }
}
