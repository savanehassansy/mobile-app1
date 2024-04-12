import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiscussionView extends GetView {
  const DiscussionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              title: const Text(
                "Hassan Sy",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("Comment tu vas ?"),
              trailing: const Text("31/02/2024"),
              onTap: () {
                Get.snackbar("Important", "En cours d'implémentation");
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("Important", "En cours d'implémentation");
        },
        child:  Icon(
          Icons.chat,
          color: Colors.white,
        ),
        backgroundColor: const Color(0xff25D366),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
