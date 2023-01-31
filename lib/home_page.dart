import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          bottom: const TabBar(
            tabs: [
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
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //         ));
                    },
                    icon: const Icon(Icons.camera_alt_outlined)),
                IconButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //         ));
                    },
                    icon: const Icon(Icons.search)),
                IconButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //         ));
                    },
                    icon: const Icon(Icons.more_vert)),
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.message),
        ),
        body: TabBarView(children: [
          ListView.builder(
              itemCount: 10,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    radius: 27,
                  ),
                  title: const Text(
                    "Pranali",
                    style: TextStyle(
                        fontSize: 20, overflow: TextOverflow.ellipsis),
                  ),
                  subtitle: Row(
                    children: const [
                      Icon(Icons.done_all),
                      Text(
                        "hiiii",
                        style: TextStyle(overflow: TextOverflow.ellipsis),
                      ),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      // IconButton(
                      //     onPressed: (() {
                      //       // Navigator.push(
                      //       //     context,
                      //       //     MaterialPageRoute(
                      //       //         builder: ((context) => UpdateNote(
                      //       //               noteId: int.parse(
                      //       //                   snapshot.data[index]['id']),
                      //       //             ))));
                      //     }),
                      //     icon: const Icon(
                      //       Icons.edit,
                      //       color: Colors.blue,
                      //     )),
                      // InkWell(
                      //     onTap: () {
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: ((context) =>
                      //                   const CreateNote())));
                      //     },
                      //     child: const Icon(Icons.view_array)),
                      // IconButton(
                      //     onPressed: (() {
                      //       NoteClass.deleteNote(
                      //           snapshot.data[index]['id']);
                      //       ScaffoldMessenger.of(context)
                      //           .showSnackBar(const SnackBar(
                      //         content: Text("Note Deleted Successfulyy"),
                      //       ));
                      //     }),
                      //     icon: const Icon(
                      //       Icons.delete,
                      //       color: Colors.red,
                      //     )),
                    ],
                  ),
                );
              })),
          Text("Chat1111"),
          Text("Chat")
        ]),
      ),
    );
  }
}
