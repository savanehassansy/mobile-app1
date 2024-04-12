import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:whatsapp/app/actus/actus_view.dart';
import 'package:whatsapp/app/call/call_view.dart';
import 'package:whatsapp/app/discussion/discussion_view.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "WorkSpace",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            backgroundColor: const Color(0xff25D366),
            actions: [
              IconButton(
                onPressed: () {
                  Get.snackbar("Important", "En cours d'implémentation");
                },
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              IconButton(
                onPressed: () {
                  Get.snackbar("Important", "En cours d'implémentation");
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              IconButton(
                onPressed: () {
                  Get.snackbar("Important", "En cours d'implémentation");
                },
                icon: const Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ],
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.people),
                ),
                Tab(
                  text: 'Discussions',
                ),
                Tab(
                  text: 'Actus',
                ),
                Tab(
                  text: 'Appels',
                ),
              ],
              indicatorColor: Colors.white,
              indicatorWeight: 4.0,
              labelColor: Colors.white,
              labelPadding: EdgeInsets.only(left: 10, right: 10),
              unselectedLabelColor: Colors.white70,
            ),
          ),
          body: const TabBarView(
            children: [

              Center(
                child: Text("en cours d'implémentation"),
              ),
              DiscussionView(),
              ActusView(),
             CallView()

            ],
          ),
        ),
      );
}
