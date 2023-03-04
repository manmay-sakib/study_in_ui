import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: ClipPath(
              clipper: PathClipper(),
              child: ColoredBox(
                color: Colors.black,
                child: SizedBox.expand(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          flex: 17,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Welcome to",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 32,
                                ),
                              ),
                              // RichText(
                              //   text: TextSpan(
                              //     children: [
                              //       TextSpan(
                              //         text: 'study',
                              //       ),
                              //       TextSpan(
                              //         text: 'IN',
                              //       )
                              //     ]
                              //   ),
                              // )
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'study ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 64,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'IN',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 64,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Spacer(flex: 3)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text(
                  'Let\'s Begin Your',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 32,
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Journey",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Colors.black,
                    minimumSize: Size(0, 72),
                    padding: EdgeInsets.symmetric(
                      horizontal: 48,
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                  label: Text('back'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double x = size.width;
    double y = size.height;
    path.moveTo(0, 0);
    path.lineTo(0, y * 0.85);
    path.quadraticBezierTo(x / 2, y * 1.15, x, y * 0.85);
    path.lineTo(x, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Polygon {
  final int sides;

  Polygon(this.sides);

  Polygon.triangle() : sides = 3;

  factory Polygon.rectangle() => Polygon(4);
}

Polygon polygon = Polygon.triangle();
