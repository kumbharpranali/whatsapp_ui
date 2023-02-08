import 'package:flutter/material.dart';
import 'package:whatsapp_ui/contactpage.dart';
import 'package:whatsapp_ui/individualpage.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ContactPage(),
              ));
        },
        child: const Icon(Icons.message),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: ((context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const IndividualPage(),
                    ));
              },
              leading: const SizedBox(
                height: 100,
                width: 50,
                child: CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.person),
                ),
              ),
              title: const Text(
                "Pranali",
                style: TextStyle(fontSize: 20, overflow: TextOverflow.ellipsis),
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
              trailing: const Text('12:00 PM'),
            );
          })),
    );
  }
}
