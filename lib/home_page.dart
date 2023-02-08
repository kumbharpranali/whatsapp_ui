import 'package:flutter/material.dart';
import 'package:whatsapp_ui/calls.dart';
import 'package:whatsapp_ui/chatpage.dart';
import 'package:whatsapp_ui/practice.dart';
import 'package:whatsapp_ui/status.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp Clone "),
          bottom: TabBar(
            onTap: (index) {
              setState(() {
                tabIndex = index;
              });
            },
            tabs: const [
              Tab(
                icon: Icon(Icons.groups),
              ),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
            ],
          ),
          actions: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyWidget()));
                    },
                    icon: const Icon(Icons.camera_alt_outlined)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                PopupMenuButton<String>(
                  onSelected: (value) {
                    // print(value);
                  },
                  itemBuilder: (BuildContext context) {
                    return const [
                      PopupMenuItem(
                        value: "new group",
                        child: Text("New Group"),
                      ),
                      PopupMenuItem(
                        value: "New Broadcast",
                        child: Text("New Broadcast"),
                      ),
                      PopupMenuItem(
                        value: "Linked Device",
                        child: Text("Linked Device"),
                      ),
                      PopupMenuItem(
                        value: "Starred messages",
                        child: Text("Starred messages"),
                      ),
                      PopupMenuItem(
                        value: "Payments",
                        child: Text("Payments"),
                      ),
                      PopupMenuItem(
                        value: "Settings",
                        child: Text("Settings"),
                      ),
                    ];
                  },
                ),
              ],
            )
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: const Icon(Icons.message),
        // ),
        body: const TabBarView(children: [
          Text("Start ypur Community"),
          ChatPage(),
          Status(),
          Calls(),
        ]),
      ),
    );
  }
}
