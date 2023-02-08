import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';

class IndividualPage extends StatefulWidget {
  const IndividualPage({super.key});

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        titleSpacing: 0,
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.arrow_back),
              CircleAvatar(
                // radius: 20,
                child: Icon(Icons.person),
              ),
            ],
          ),
        ),
        title: Container(
          margin: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Aahoo",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(
                "Last seen today at 12.00",
                style: TextStyle(fontSize: 13),
              ),
            ],
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.videocam)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
              PopupMenuButton<String>(
                onSelected: (value) {
                  // print(value);
                },
                itemBuilder: (BuildContext context) {
                  return const [
                    PopupMenuItem(
                      value: "veiw contact",
                      child: Text("Veiw Contact"),
                    ),
                    PopupMenuItem(
                      value: "media,links, and docs",
                      child: Text(" Media, links, and docs"),
                    ),
                    PopupMenuItem(
                      value: "search",
                      child: Text("Search"),
                    ),
                    PopupMenuItem(
                      value: "mute notifications",
                      child: Text("Mute Notifications"),
                    ),
                    PopupMenuItem(
                      value: "disappearing meassages",
                      child: Text("Disappearing meassages"),
                    ),
                    PopupMenuItem(
                      value: "wallepaper",
                      child: Text("Wallepaper"),
                    ),
                    PopupMenuItem(
                      value: "More",
                      child: Text("more"),
                    ),
                  ];
                },
              ),
            ],
          ),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(children: const []),
            Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 50,
                          child: Card(
                              margin: const EdgeInsets.only(
                                  left: 2, right: 2, bottom: 8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.multiline,
                                maxLines: 5,
                                minLines: 1,
                                decoration: InputDecoration(
                                    hintText: "Message",
                                    suffixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              showModalBottomSheet(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  context: context,
                                                  builder: (context) =>
                                                      bottomsheet());
                                            },
                                            icon:
                                                const Icon(Icons.attach_file)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.paid)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.camera_alt)),
                                      ],
                                    ),
                                    prefixIcon: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                            Icons.emoji_emotions_outlined)),
                                    contentPadding: const EdgeInsets.all(5)),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0, left: 2),
                          child: CircleAvatar(
                            radius: 22,
                            child: IconButton(
                                onPressed: () {}, icon: const Icon(Icons.mic)),
                          ),
                        ),
                      ],
                    ),
                    // emojiSelect(),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget bottomsheet() {
    return SizedBox(
      height: 378,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: const EdgeInsets.all(18),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconcreatiom(
                      Icons.insert_drive_file, Colors.indigo, "Document"),
                  const SizedBox(
                    width: 40,
                  ),
                  iconcreatiom(Icons.camera_alt, Colors.pink, "Camera"),
                  const SizedBox(
                    width: 40,
                  ),
                  iconcreatiom(Icons.insert_photo, Colors.purple, "Gallery"),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconcreatiom(Icons.headset, Colors.orange, "Audio"),
                  const SizedBox(
                    width: 40,
                  ),
                  iconcreatiom(Icons.location_on, Colors.green, "Locatipn"),
                  const SizedBox(
                    width: 40,
                  ),
                  iconcreatiom(Icons.paid, Colors.blue, "Payment"),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconcreatiom(Icons.person, Colors.teal, "Contact"),
                  const SizedBox(
                    width: 40,
                  ),
                  iconcreatiom(Icons.bar_chart, Colors.red, "Poll"),
                  const SizedBox(
                    width: 90,
                  ),
                  // iconcreatiom(Icons.paid, Colors.blueGrey, "Payment"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget iconcreatiom(IconData icon, Color color, String text) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Icon(
              icon,
              size: 29,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(text, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget emojiSelect() {
    return EmojiPicker(
      onEmojiSelected: (emoji, category) {
        // print(emoji);
      },
    );
  }
}
