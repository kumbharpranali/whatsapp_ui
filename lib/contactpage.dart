import 'package:flutter/material.dart';
import 'package:whatsapp_ui/contactcard.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Select Contacts",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "200 Contacts",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          PopupMenuButton<String>(
            onSelected: (value) {
              // print(value);
            },
            itemBuilder: (BuildContext context) {
              return const [
                PopupMenuItem(
                  value: "invite a freind",
                  child: Text("Invite a Freind"),
                ),
                PopupMenuItem(
                  value: "contacts",
                  child: Text("Contacts"),
                ),
                PopupMenuItem(
                  value: "refresh",
                  child: Text("Refresh"),
                ),
                PopupMenuItem(
                  value: "help",
                  child: Text("Help"),
                ),
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                radius: 23,
                child:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.group)),
              ),
              title: const Text(
                "New Group",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                radius: 23,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.person_add)),
              ),
              title: const Text(
                "New Contact",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code)),
            ),
            const SizedBox(
              height: 5,
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                radius: 23,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.groups)),
              ),
              title: const Text(
                "New Cummunity",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Contacts on WhatsApp"),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) => const ContactCard(),
            )
          ],
        ),
      ),
    );
  }
}
