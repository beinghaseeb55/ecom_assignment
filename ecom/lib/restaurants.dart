import 'package:flutter/material.dart';
import 'package:ecom/list.dart';
import 'package:ecom/personal_info.dart';

class Resturants extends StatefulWidget {
  @override
  _ResturantsState createState() => _ResturantsState();
}

class _ResturantsState extends State<Resturants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Restaurants Delivery",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Home",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              size: 25,
              color: Colors.red,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FoodList()),
              );
            }),
        actions: [
          IconButton(
            icon:
                Icon(Icons.favorite_outline_sharp, size: 25, color: Colors.red),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person, size: 25, color: Colors.red),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyInfo()),
              );
            },
          ),
        ],
        titleSpacing: 4,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Container(
                // padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: kElevationToShadow[1],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search_sharp,
                        color: Colors.red,
                        size: 25,
                      ),
                      hintText: "Search for resturents",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 17)),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        "All restaurants",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              rescard1(),
              rescard2(),
              rescard3(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget rescard1() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: [
            Container(
              height: 170,
              width: 380,
              decoration: BoxDecoration(
                // color: Colors.red,
                image: new DecorationImage(
                    image: NetworkImage(
                        'https://wallpaperaccess.com/full/1312729.jpg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            Positioned(
              left: 328,
              top: 8,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 12,
                child: Icon(
                  Icons.favorite_outline_outlined,
                  size: 15,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 136,
              child: Container(
                height: 25,
                width: 60,
                // color: Colors.yellow,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "35 min",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Burger Lab - North Nazimabad",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 18.0,
                  ),
                  Text(
                    " 4.7",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "(2k+)",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text("\$\$ . Fast Food, Bumper Deals, Fried Chicken",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13.0,
                  fontWeight: FontWeight.normal)),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text("Rs. 40 Delivery fee",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 11.0,
                  fontWeight: FontWeight.bold)),
        ),
      ],
    ),
  );
}

Widget rescard2() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: [
            Container(
              height: 170,
              width: 380,
              decoration: BoxDecoration(
                // color: Colors.red,
                image: new DecorationImage(
                    image: NetworkImage(
                        'https://images.alphacoders.com/991/991307.jpg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            Positioned(
              left: 328,
              top: 8,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 12,
                child: Icon(
                  Icons.favorite_outline_outlined,
                  size: 15,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 136,
              child: Container(
                height: 25,
                width: 60,
                // color: Colors.yellow,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "25 min",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Pizza Hut",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 18.0,
                  ),
                  Text(
                    " 4.9",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "(6k+)",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text("\$\$\$ . Pizza, Hatrick deals - June",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13.0,
                  fontWeight: FontWeight.normal)),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text("Free delivery",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 11.0,
                  fontWeight: FontWeight.bold)),
        ),
      ],
    ),
  );
}

Widget rescard3() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: [
            Container(
              height: 170,
              width: 380,
              decoration: BoxDecoration(
                // color: Colors.red,
                image: new DecorationImage(
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/7c/60/a8/7c60a8ae60ceac9b085994a61f460f8e.jpg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            Positioned(
              left: 328,
              top: 8,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 12,
                child: Icon(
                  Icons.favorite_outline_outlined,
                  size: 15,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 136,
              child: Container(
                height: 25,
                width: 60,
                // color: Colors.yellow,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "30 min",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Meeruth Kabab House",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 18.0,
                  ),
                  Text(
                    " 3.9",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "(1k+)",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text("\$\$ . Pakistani BBQ, Chicken Karahi, Fried Chicken",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13.0,
                  fontWeight: FontWeight.normal)),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text("Rs. 30 Delivery fee",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 11.0,
                  fontWeight: FontWeight.bold)),
        ),
      ],
    ),
  );
}
