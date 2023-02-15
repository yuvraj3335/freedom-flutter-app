import 'package:flutter/material.dart';
import 'package:proj_/routes.dart';
import 'icon_container.dart';

class ScannerPage extends StatelessWidget {
  const ScannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6DFEC),
      appBar: AppBar(
        title: const Text(
          'Scanner',
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
                          text: 'QR Code',
                          icon: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/3409/3409588.png'),
                          route: '/qrpage',
                          ),
                        
                      IconContainer(
                          text: 'Bar Code',
                          icon: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/9407/9407891.png')),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      IconContainer(
                          text: 'Text',
                          icon: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/5518/5518052.png'),
                          route: '/ocr',
                          ),
                      IconContainer(
                          text: 'Read',
                          icon: NetworkImage(
                              'https://azure.microsoft.com/svghandler/immersive-reader/?width=600&height=315'),
                          route: '/tts',
                          ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      // IconContainer(text: 'Compress Excel', icon: NetworkImage('https://cdn-icons-png.flaticon.com/512/906/906310.png')),
                      // IconContainer(text: 'Compress to RAR', icon: NetworkImage('https://cdn-icons-png.flaticon.com/512/5719/5719948.png')),
                      SizedBox(
                        height: 120,
                        width: 120,
                      ),
                      SizedBox(
                        height: 120,
                        width: 120,
                      ),
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
