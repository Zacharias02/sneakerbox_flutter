import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: customBottomNavigation(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 450,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/aj7_cr/nike.jpeg'),
                      fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.2)
                    ])),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintStyle: TextStyle(color: Colors.white),
                                hintText: 'Search...',
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                filled: true,
                                fillColor: Colors.white.withOpacity(.2),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: BorderSide.none),
                              ),
                            ),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                              onPressed: null),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Rock your \nkicks",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "Learn more about our hot deals",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.white,
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "You're Looking for",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "All",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        shoeCategory(
                            image: "assets/images/aj7_cr/sneakers.jpg",
                            categ: "Sneakers"),
                        shoeCategory(
                            image: "assets/images/aj7_cr/rubbershoes.jpeg",
                            categ: "Rubber Shoes"),
                        shoeCategory(
                            image: "assets/images/aj7_cr/hightops.jpg",
                            categ: "High Tops"),
                        shoeCategory(
                            image: "assets/images/aj7_cr/lowtops.jpg",
                            categ: "Low Tops"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "For You",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "All",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 201,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        shoeCategory(
                            image: "assets/images/aj7_cr/men.jpg",
                            categ: "Men's"),
                        shoeCategory(
                            image: "assets/images/aj7_cr/women.jpg",
                            categ: "Women's"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget shoeCategory({image, categ}) {
    return AspectRatio(
      aspectRatio: 3 / 3.2,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.0)
              ])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              categ,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }

  Widget customBottomNavigation() {
    return BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                'Account',
                style: TextStyle(color: Colors.white),
              ))
        ]);
  }
}
