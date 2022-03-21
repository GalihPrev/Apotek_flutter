import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/ListProduct/Categories_list.dart';
// import 'package:loginpage/Carousel_Slider.dart';
import 'package:loginpage/LoginPage/LoginScreen.dart';

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
final CarouselController _controller = CarouselController();

class ListProduct extends StatefulWidget {
  const ListProduct({Key? key}) : super(key: key);

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.grey,
          margin: EdgeInsets.all(10),
          child: Card(
            margin: EdgeInsets.all(20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.all(30),
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Center(
                      child: Container(
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                ),
                                labelText: 'Search your Items',
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: Colors.red),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nama Apotek",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.local_hospital),
                            Expanded(
                              child: Text(
                                "List Product",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: const [
                                  Text(
                                    "More ",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 12,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 10,
                          child: CarouselSlider(
                            items: imageSliders,
                            carouselController: _controller,
                            options: CarouselOptions(
                                autoPlayInterval: Duration(seconds: 2),
                                autoPlay: true,
                                enlargeCenterPage: true,
                                aspectRatio: 2,
                                viewportFraction: 1,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _current = index;
                                  });
                                  // onPressed:
                                  // () {
                                  //   Navigator.pushReplacement(context,
                                  //       MaterialPageRoute(
                                  //     builder: (context) {
                                  //       return LoginScreen();
                                  //     },
                                  //   ));
                                  // };
                                }),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: imgList.asMap().entries.map((entry) {
                            return GestureDetector(
                              onTap: () => _controller.animateToPage(entry.key),
                              child: Container(
                                width: 5,
                                height: 12,
                                margin: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? Colors.white
                                          : Colors.black)
                                      .withOpacity(
                                          _current == entry.key ? 0.8 : 0.4),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        Container(
                          // color: Colors.amber,
                          height: 40,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(child: Text("Categories")),
                                  TextButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: const [
                                        Text(
                                          "More ",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.black,
                                          size: 12,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  _CategoriesList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row _CategoriesList() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        CategoriesList(
          title: "nama 1 ",
        ),
        CategoriesList(
          title: "nama 2 ",
        ),
        CategoriesList(
          title: "nama 3 ",
        ),
        CategoriesList(
          title: "nama 4 ",
        ),
      ],
    );
  }
}



//  IconButton(
//               icon: Icon(Icons.search),
//               onPressed: () {},
//             ),
