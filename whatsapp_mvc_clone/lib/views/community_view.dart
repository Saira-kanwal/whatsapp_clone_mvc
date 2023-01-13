import 'package:flutter/material.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ListTile(
                  leading: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(Icons.group,color: Colors.white,),
                      ),
                      const Positioned(
                        bottom: -3,
                        right: -3,
                        child:
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 12,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.green,
                            child: Icon(Icons.add,color: Colors.white,size: 15,),
                          ),
                        )
                      )
                    ],
                  ),
                  title: const Text("New Community",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
              ),
            Container(
              height: 10,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade200,
            ),

            ListView.builder(
              itemCount: 20,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index){
                  return  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.group,color: Colors.white,),
                    ),
                    title: const Text("Community Name",style:TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: const Text("last message"),
                    //trailing: Text("${DateTime.now().month}/${DateTime.now().day}/${DateTime.now().year}"),

                  );
                }
            )
            ],
          ),
        ),
    );
  }
}


