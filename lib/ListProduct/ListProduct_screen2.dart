import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/LoginPage/LoginScreen.dart';

class listProduct2 extends StatefulWidget {
  const listProduct2({Key? key}) : super(key: key);

  @override
  State<listProduct2> createState() => _listProduct2State();
}

final List<String> imgList = [
  'https://www.bobobox.co.id/blog/wp-content/uploads/2021/01/Screen-Shot-2021-01-26-at-12.28.01-PM.jpg',
  'https://www.bobobox.co.id/blog/wp-content/uploads/2021/01/Screen-Shot-2021-01-26-at-12.28.01-PM.jpg',
  'https://www.bobobox.co.id/blog/wp-content/uploads/2021/01/Screen-Shot-2021-01-26-at-12.28.01-PM.jpg',
  'https://www.bobobox.co.id/blog/wp-content/uploads/2021/01/Screen-Shot-2021-01-26-at-12.28.01-PM.jpg',
];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1200),
                  ],
                )),
          ),
        ))
    .toList();
int _current = 0;

class _listProduct2State extends State<listProduct2> {
  @override
  Widget build(BuildContext context) {
    final CarouselController _controller = CarouselController();

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "List Product",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
            floating: true,
            snap: false,
            pinned: true,
            titleSpacing: 0,
            actions: [],
            shadowColor: Colors.transparent,
            expandedHeight: size.height / 5,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 70, left: 80, right: 80),
                      child: Container(
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                prefixIcon: GestureDetector(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen())),
                                  child: const Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  ),
                                ),
                                labelText: 'Search your Items',
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverFixedExtentList(
              delegate: SliverChildListDelegate([
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Apotek K24 SINGOSARI",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.local_hospital),
                              const Text(
                                "List Product",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: const [
                                    Text(
                                      "More ",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 8,
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black,
                                        size: 12,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
              itemExtent: MediaQuery.of(context).size.height / 1),
          // const SliverPadding(
          //   padding: EdgeInsets.only(
          //     top: 32,
          //   ),
          // ),
          // SliverList(
          //     delegate: SliverChildListDelegate([
          //   Row(
          //     children: [
          // Text(
          //   "Apotek K 24 SINGOSARI",
          //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          //       )
          //     ],
          //   )
          // ])),
          // const SliverPadding(
          //   padding: EdgeInsets.only(
          //     top: 32,
          //   ),
          // ),
          // SliverList(
          //   delegate: SliverChildListDelegate(
          //     [
          //       Column(
          //         children: [
          //           Row(
          //             children: [
          //               Icon(Icons.local_hospital),
          //               Expanded(
          //                 child: Text(
          //                   "List Product",
          //                   style: TextStyle(
          //                       fontSize: 15, fontWeight: FontWeight.w500),
          //                 ),
          //               ),
          //               TextButton(
          //                 onPressed: () {},
          //                 child: Row(
          //                   children: const [
          //                     Text(
          //                       "More ",
          //                       style: TextStyle(color: Colors.black),
          //                     ),
          //                     Icon(
          //                       Icons.arrow_forward_ios,
          //                       color: Colors.black,
          //                       size: 12,
          //                     )
          //                   ],
          //                 ),
          //               )
          //             ],
          //           ),
          //         ],
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
