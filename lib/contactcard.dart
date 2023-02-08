import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(
        radius: 23,
        child: IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
      ),
      title: const Text(
        "Abc",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      subtitle: const Text("I am a Flutter Developer"),
    );
  }
}
