import 'package:flutter/material.dart';

class StarredMessagesView extends StatelessWidget {
  const StarredMessagesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Starred messages"),
      ),
    );
  }
}
