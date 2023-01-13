import 'package:flutter/material.dart';

class NewGroup extends StatefulWidget {
  const NewGroup({Key? key}) : super(key: key);

  @override
  State<NewGroup> createState() => _NewGroupState();
}

class _NewGroupState extends State<NewGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back),
        title: Column(
          children: const [
             Text("New Group"),
            Text("Add Participants")
          ],
        ),
        actions: const [
          Icon(Icons.search,)
        ],
      ),
    );
  }
}
