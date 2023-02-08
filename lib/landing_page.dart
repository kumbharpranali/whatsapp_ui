// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp_ui/home_page.dart';

class landingPage extends StatefulWidget {
  const landingPage({super.key});

  @override
  State<landingPage> createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Welcome to WhatsApp",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 60,
              ),
              Image.network(
                "https://raw.githubusercontent.com/DevStack06/images/master/ChatImages/bg.png",
                color: Colors.greenAccent[700],
                height: 340,
                width: 340,
              ),
              const SizedBox(
                height: 90,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style:
                            const TextStyle(color: Colors.black, fontSize: 17),
                        children: [
                          TextSpan(
                              text: "Agree and Continue to accept  the ",
                              style: TextStyle(color: Colors.grey[600])),
                          const TextSpan(
                              text:
                                  "WhatsApp Terms of Services  and Privacy Policy",
                              style: TextStyle(color: Colors.cyan)),
                        ])),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                      ));
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 110,
                  child: Card(
                    margin: const EdgeInsets.all(0),
                    color: Colors.greenAccent[700],
                    elevation: 8,
                    child: const Center(
                      child: Text(
                        "AGREE AND CONTINUE",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
