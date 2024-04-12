import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActusView extends GetView {
  const ActusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Status",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {
                        Get.snackbar("Important", "En cours d'implémentation");
                      },
                      icon: const Icon(
                        Icons.more_vert_outlined,
                        size: 29,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
             Padding(
              padding: const  EdgeInsets.only(left: 18.0, right: 20),
              child: Row(
                children: [
               const   SizedBox(
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
               const   SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.snackbar("Important", "En cours d'implémentation");
                    } ,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mon statut",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "Appuyer pour ajouter un statut",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
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
              child: Text("Mise à jour récentes"),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 15,
                itemBuilder: (context, index) {
                  return  ListTile(
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
                    subtitle:  const Text("il y a 10 minutes"),onTap: (){
                    Get.snackbar("Important", "En cours d'implémentation");
                  },
                  );
                }),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Get.snackbar("Important", "En cours d'implémentation");
            },
            child: Icon(
              Icons.edit,
              color: Color(0xff25D366),
            ),
            backgroundColor: const Color(0xffcdf1d8),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              Get.snackbar("Important", "En cours d'implémentation");
            },
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            backgroundColor: const Color(0xff25D366),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
