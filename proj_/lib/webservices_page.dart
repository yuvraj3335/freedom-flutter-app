import 'package:flutter/material.dart';
import 'package:proj_/routes.dart';
import 'icon_container.dart';

class WebServicePage extends StatelessWidget {
  const WebServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6DFEC),
      appBar: AppBar(
        title: const Text(
          'Web Services',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color(0xFFFFCFA1),
        elevation: 0,
        centerTitle: true,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(
        //     Icons.menu,
        //   ),
        // ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeroute);
              },
              icon: const Icon(
                Icons.home,
              ))
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Color(0xFFF3F0F7),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      IconContainer(
                          text: 'Convert for\n Facebook',
                          icon: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/5968/5968764.png')),
                      IconContainer(
                          text: 'Convert for\n Instagram',
                          icon: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/1384/1384063.png')),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      IconContainer(
                          text: 'Convert for\n Whatsapp',
                          icon: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/733/733585.png')),
                      IconContainer(
                          text: 'Convert for\n  Youtube ',
                          icon: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/1384/1384060.png')),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      IconContainer(
                          text: 'Convert for\n Telegram',
                          icon: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/5968/5968804.png')),
                      IconContainer(
                          text: 'Convert for\n   Twitter',
                          icon: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/733/733579.png')),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
