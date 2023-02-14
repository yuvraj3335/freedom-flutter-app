// ignore_for_file: prefer_const_constructors

import 'package:proj_/image_stitch.dart';

import './routes.dart';
import 'package:flutter/material.dart';
import 'package:proj_/routes.dart';
import '../../icon_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6DFEC),
      appBar: AppBar(
        title: const Text(
          'FREEDOM',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color(0xFFFFCFA1),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
          ),
        ),
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
          SizedBox(
            height: 80,
            child: Container(
              height: 50,
              width: 400,
              margin: const EdgeInsets.fromLTRB(10, 17, 10, 17),
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Color(0xFFF3F0F7)),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('Search',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 18,
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Color(0xFFF3F0F7),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        IconContainer(
                          icon: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/1387/1387554.png'),
                          text: 'Compressor',
                          route: "/compressor",
                        ),
                        IconContainer(
                          text: 'Converter',
                          icon: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/1201/1201530.png'),
                          route: '/'
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        IconContainer(
                            text: 'Scanner',
                            icon: NetworkImage(
                                'https://cdn-icons-png.flaticon.com/512/5509/5509142.png'),
                            route: "/scanner",
                        ),
                        IconContainer(
                            text: 'Web Services',
                            icon: NetworkImage(
                                'https://cdn-icons-png.flaticon.com/512/1086/1086507.png'),
                            route: "/webservices",
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            TextButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )),
                                minimumSize: MaterialStateProperty.all<Size>(
                                    const Size(120, 120)),
                                maximumSize: MaterialStateProperty.all<Size>(
                                    const Size(120, 120)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ImageStitch()));
                              },
                              child: Image(
                                image: NetworkImage(
                                    'https://cdn-icons-png.flaticon.com/512/5665/5665011.png'),
                                width: 80,
                                height: 80,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              'Image Stitching',
                              style: const TextStyle(
                                fontSize: 16,
                                // fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        //   IconContainer(text: 'Image Stitching',icon: NetworkImage(  'https://cdn-icons-png.flaticon.com/512/5665/5665011.png')),  SizedBox( height: 120, width: 120, ),
                      ],
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
