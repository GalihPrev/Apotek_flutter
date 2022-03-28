import 'package:flutter/material.dart';
import 'package:loginpage/LoginPage/LoginScreen.dart';

class CategoriesList2 extends StatelessWidget {
  const CategoriesList2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.only(left: 30, top: 10),
              height: size.height / 5,
              width: size.width,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 23, 145, 29)),
              child: SafeArea(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: const [
                            Icon(Icons.arrow_back),
                            Text("Categories"),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            "Product Categories",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height - (size.height / 6),
              width: size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20), // set top and ledt right
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              child: TopCard(
                                title: "Home Test",
                                Background: Color.fromARGB(255, 141, 214, 144),
                                icon: Icon(Icons.home),
                              ),
                            ),
                            MidCard(
                              title: "timelapse Test",
                              Background: Color.fromARGB(255, 93, 209, 97),
                              icon: Icon(Icons.timelapse),
                            ),
                            TopCard(
                              title: "Keyboard Test",
                              Background: Color.fromARGB(255, 141, 214, 144),
                              icon: Icon(Icons.keyboard),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            MidCard(
                              title: "Mouse Test",
                              Background: Color.fromARGB(255, 93, 209, 97),
                              icon: Icon(Icons.mouse),
                            ),
                            TopCard(
                              title: "Cable Test",
                              Background: Color.fromARGB(255, 102, 168, 104),
                              icon: Icon(Icons.cable),
                            ),
                            BottomCard(
                              title: "Medic Test",
                              Background: Color.fromARGB(255, 93, 209, 97),
                              icon: Icon(Icons.medical_services),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TopCard extends StatelessWidget {
  final String title;
  // final String image;
  final Icon icon;
  final Color Background;

  const TopCard(
      {Key? key,
      required this.title,
      // required this.image,
      required this.Background,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 15),
        height: 190,
        width: 160,
        // color: Color.fromARGB(255, 120, 168, 121),
        decoration: BoxDecoration(
          color: Background,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white, width: 10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 50,
              offset: Offset(10, 10), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Expanded(
                child: Icon(
              icon.icon,
              color: Colors.black,
              size: 100,
            )),
            const SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}

class MidCard extends StatelessWidget {
  final String title;
  // final String image;
  final Icon icon;
  final Color Background;

  const MidCard(
      {Key? key,
      required this.title,
      // required this.image,
      required this.Background,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 15),
        height: 160,
        width: 160,
        // color: Color.fromARGB(255, 120, 168, 121),
        decoration: BoxDecoration(
          color: Background,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white, width: 10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 50,
              offset: Offset(10, 10), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Expanded(
                child: Icon(
              icon.icon,
              color: Colors.black,
              size: 100,
            )),
            const SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}

class BottomCard extends StatelessWidget {
  final String title;
  // final String image;
  final Icon icon;
  final Color Background;

  const BottomCard(
      {Key? key,
      required this.title,
      // required this.image,
      required this.Background,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 15),
        height: 160,
        width: 160,
        // color: Color.fromARGB(255, 120, 168, 121),
        decoration: BoxDecoration(
          color: Background,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white, width: 10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 50,
              offset: Offset(10, 10), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Expanded(
                child: Icon(
              icon.icon,
              color: Colors.black,
              size: 100,
            )),
            const SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
