import 'package:flutter/material.dart';
import 'package:ecom/list.dart';

class MyInfo extends StatefulWidget {
  @override
  _MyInfoState createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 5,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 25,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FoodList()),
              );
            }),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app, size: 25, color: Colors.white),
            onPressed: () {},
          ),
        ],
        titleSpacing: 4,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      height: 185,
                      width: 185,
                      // color: Colors.black,
                      child: CircleAvatar(
                        // backgroundImage: NetworkImage(
                        //     'https://img.freepik.com/free-psd/top-view-fast-food-black-background-mock-up_23-2148321326.jpg?size=626&ext=jpg'),
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg'),
                        radius: 20,
                      ),
                    ),
                    Positioned(
                      left: 130,
                      top: 140,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.6),
                        radius: 20,
                        child: Icon(
                          Icons.photo_camera,
                          size: 22,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Muhammad Haseeb",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: new Divider(
                color: Colors.grey[100],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Personal Info",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.6),
                    radius: 22,
                    child: Icon(
                      Icons.email,
                      size: 22,
                      color: Colors.grey[200],
                    ),
                  ),
                  title: Text(
                    "Email",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "username@gmail.com",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal),
                  ),
                  trailing: Icon(
                    Icons.edit,
                    size: 22,
                    color: Colors.grey[100],
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.6),
                    radius: 22,
                    child: Icon(
                      Icons.phone,
                      size: 22,
                      color: Colors.grey[200],
                    ),
                  ),
                  title: Text(
                    "Phone",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "+92-301-2345678",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal),
                  ),
                  trailing: Icon(
                    Icons.edit,
                    size: 22,
                    color: Colors.grey[100],
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.6),
                    radius: 22,
                    child: Icon(
                      Icons.home,
                      size: 22,
                      color: Colors.grey[200],
                    ),
                  ),
                  title: Text(
                    "Address",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "New York, Random Street House No.72",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal),
                  ),
                  trailing: Icon(
                    Icons.edit,
                    size: 22,
                    color: Colors.grey[100],
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.6),
                    radius: 22,
                    child: Icon(
                      Icons.date_range,
                      size: 22,
                      color: Colors.grey[200],
                    ),
                  ),
                  title: Text(
                    "Date Of Birth",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "August 11, 1998",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal),
                  ),
                  trailing: Icon(
                    Icons.edit,
                    size: 22,
                    color: Colors.grey[100],
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.6),
                    radius: 22,
                    child: Icon(
                      Icons.location_pin,
                      size: 22,
                      color: Colors.grey[200],
                    ),
                  ),
                  title: Text(
                    "Home Town",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "North Nazimabad, Karachi",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal),
                  ),
                  trailing: Icon(
                    Icons.edit,
                    size: 22,
                    color: Colors.grey[100],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
