import 'package:flutter/material.dart';
// import 'package:ecom/restaurants.dart';

class FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 110),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Resturant",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 27,
                              width: 110,
                              // color: Colors.yellow,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_pin,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                  SizedBox(width: 2),
                                  Text(
                                    "Location",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
              decoration: BoxDecoration(
                color: Colors.red,
                image: new DecorationImage(
                    image: NetworkImage(
                        'https://img.freepik.com/free-psd/top-view-fast-food-black-background-mock-up_23-2148321326.jpg?size=626&ext=jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Food Deals",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: new Divider(
                color: Colors.grey[800],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                foodlist1(),
                foodlist2(),
                foodlist3(),
                foodlist4(),
                foodlist5(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "New Arrival",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: new Divider(
                    color: Colors.grey[800],
                  ),
                ),
                foodlist1(),
                foodlist2(),
                foodlist3(),
                foodlist4(),
                foodlist5(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget foodlist1() {
  return ListTile(
      leading: CircleAvatar(
        backgroundImage:
            NetworkImage('https://wallpapercave.com/wp/wc1813154.jpg'),
        radius: 25,
      ),
      title: Text(
        "Festive Deal",
        style: TextStyle(
            color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 2,
          ),
          Text(
            "Large Pizza, Regular Pizza & 1 litre Drink",
            style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14.0,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 3,
          ),
        ],
      ),
      trailing: Text(
        "\$10",
        style: TextStyle(
            color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold),
      ));
}

Widget foodlist2() {
  return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            'https://c4.wallpaperflare.com/wallpaper/1017/647/742/cheese-pizza-tomatoes-olives-bacon-hd-wallpaper-preview.jpg'),
        radius: 25,
      ),
      title: Text(
        "Midnight Deal",
        style: TextStyle(
            color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 2,
          ),
          Text(
            "Large Pizza with 1 litre soft Drink",
            style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14.0,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 3,
          ),
        ],
      ),
      trailing: Text(
        "\$8",
        style: TextStyle(
            color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold),
      ));
}

Widget foodlist3() {
  return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            'https://i.pinimg.com/originals/31/ac/7d/31ac7d17b45a6b900090f8a237baa7e4.jpg'),
        radius: 25,
      ),
      title: Text(
        "Limited Time Offer",
        style: TextStyle(
            color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 2,
          ),
          Text(
            "Regular Pizza with complimentry roll",
            style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14.0,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 3,
          ),
        ],
      ),
      trailing: Text(
        "\$6",
        style: TextStyle(
            color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold),
      ));
}

Widget foodlist4() {
  return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            'https://images2.alphacoders.com/280/thumb-1920-280070.jpg'),
        radius: 25,
      ),
      title: Text(
        "Chicken Pasta",
        style: TextStyle(
            color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 2,
          ),
          Text(
            "Capsicum, chicken tikka cheese macroni, pizza sauce, sweat corns and white sauces",
            style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14.0,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 3,
          ),
        ],
      ),
      trailing: Text(
        "\$5",
        style: TextStyle(
            color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold),
      ));
}

Widget foodlist5() {
  return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1541592106381-b31e9677c0e5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGFwYXMlMjBmcml0YXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),
        radius: 25,
      ),
      title: Text(
        "Plain Fries",
        style: TextStyle(
            color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 2,
          ),
          Text(
            "Serves 1",
            style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14.0,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 3,
          ),
        ],
      ),
      trailing: Text(
        "\$3",
        style: TextStyle(
            color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold),
      ));
}
