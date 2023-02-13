import 'package:flutter/material.dart';
import 'package:proj_/mainpage.dart';
import 'package:proj_/routes.dart';

class IconContainer extends StatelessWidget {
  final String text;
  final ImageProvider icon;

  const IconContainer({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )),
            minimumSize: MaterialStateProperty.all<Size>(const Size(120, 120)),
            maximumSize: MaterialStateProperty.all<Size>(const Size(120, 120)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MainPage(title: 'title')));
          },
          child: Image(
            image: icon,
            width: 80,
            height: 80,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            // fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
