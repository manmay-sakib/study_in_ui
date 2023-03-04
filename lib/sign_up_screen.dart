import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var hintStyle = TextStyle(
      fontSize: 20,
      color: Colors.black.withOpacity(0.5),
    );
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                right: -70,
                bottom: -100,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  child: SizedBox(
                    height: 240,
                    width: 240,
                  ),
                ),
              ),
              Positioned(
                left: -70,
                top: -100,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  child: SizedBox(
                    height: 240,
                    width: 240,
                  ),
                ),
              ),
              Positioned(
                top: 36,
                left: 36,
                child: Image.asset('assets/book-reader.png'),
              ),
              Positioned(
                right: -70,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black.withOpacity(0.15),
                  ),
                  child: SizedBox(
                    height: 240,
                    width: 240,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(52.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'study ',
                            style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: 'IN',
                            style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 85,
                    ),
                    SizedBox(
                      height: 56,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Create Username',
                          hintStyle: hintStyle,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      height: 56,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Create Password',
                          hintStyle: hintStyle,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      height: 56,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Email ID",
                          hintStyle: hintStyle,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 29,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Join Us',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
