import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CallView extends GetView {
  const CallView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 20, top: 20),
              child: Row(
                children: [
                  const SizedBox(
                    height: 55,
                    width: 55,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.snackbar("Important", "En cours d'implémentation");
                    },
                    child: const SizedBox(
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Créer un lien d'appel",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "Partager un lien pour votre appel WorkSpace",
                            style: TextStyle(fontSize: 16),
                            softWrap: true,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                "Récents",
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const SizedBox(
                      height: 55,
                      width: 55,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    title: const Text(
                      "Hassan Sy",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Row(
                      children: [
                        Icon(Icons.call_made,color: Color(0xff25D366),) ,
                        SizedBox(
                          width: 7,
                        ),
                        Text("7 février, 12:30")
                      ],
                    ),
                    onTap: () {
                      Get.snackbar("Important", "En cours d'implémentation");
                    },
                    trailing: const Icon(
                      Icons.call,
                      color: Color(0xff25D366),
                    ),
                  );
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("Important", "En cours d'implémentation");
        },
        child: Icon(
          Icons.add_ic_call_sharp,
          color: Colors.white,
        ),
        backgroundColor: const Color(0xff25D366),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
