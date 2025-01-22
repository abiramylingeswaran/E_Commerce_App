import 'package:flutter/material.dart';

class Clip extends StatefulWidget {
  const Clip({super.key});

  @override
  State<Clip> createState() => _ClipState();
}

class _ClipState extends State<Clip> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                color: Colors.blue,
                height: screenHeight * 0.4,
              ),
            ),
            const Positioned(
              top: 50,
              left: 50,
              child: Text(
                'Apple',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, 0);
    path.quadraticBezierTo(size.width * 0.3, 0, size.width, 0);
    path.quadraticBezierTo(
        size.width, size.height * 0.2, size.width, size.height);
    path.quadraticBezierTo(0, size.height * 0.3, 0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
