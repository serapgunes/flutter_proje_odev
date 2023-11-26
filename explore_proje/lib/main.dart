import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 251, 251),
        body: Column(
          children: [
            header(),
            Expanded(
              child: Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        searchbox(),
                        Divider(),
                        toplocation(),
                        Divider(),
                        nearlocation(),
                        Divider(),
                        suggestions(),
                        Divider(),
                        toprated(),
                      ],
                    ),
                  )),
            ),
            bottommenu(),
          ],
        ),
      ),
    );
  }

  Widget toprated() => Container(
          child: Column(
        children: [
          titleitem("Top Rated", "View all"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                locationitem("assets/images/venezuela.webp", "Venezuela",
                    "9km from you", "₺ 20.0"),
                locationitem("assets/images/vietnam.webp", "Vietnam",
                    "10km from you", "₺ 15.0"),
                locationitem("assets/images/irlanda.webp", "İrlanda",
                    "12km from you", "₺ 19.0"),
                locationitem("assets/images/avusturya.webp", "Avusturya",
                    "7km from you", "₺ 10.0"),
                locationitem("assets/images/filipinler.webp", "Filipinler",
                    "20km from you", "₺ 18.0"),
                locationitem("assets/images/norveç.webp", "Norveç",
                    "6km from you", "₺ 8.0"),
              ],
            ),
          ),
        ],
      ));

  Widget suggestions() => Container(
          child: Column(
        children: [
          titleitem("Suggestions", "View all"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                locationitem("assets/images/irlanda.webp", "İrlanda",
                    "12km from you", "₺ 19.0"),
                locationitem("assets/images/filipinler.webp", "Filipinler",
                    "20km from you", "₺ 18.0"),
                locationitem("assets/images/norveç.webp", "Norveç",
                    "6km from you", "₺ 8.0"),
                locationitem("assets/images/avusturya.webp", "Avusturya",
                    "7km from you", "₺ 10.0"),
                locationitem("assets/images/venezuela.webp", "Venezuela",
                    "9km from you", "₺ 20.0"),
                locationitem("assets/images/vietnam.webp", "Vietnam",
                    "10km from you", "₺ 15.0"),
              ],
            ),
          ),
        ],
      ));

  Widget nearlocation() => Container(
          child: Column(
        children: [
          titleitem("Near you", "View all"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                locationitem("assets/images/avusturya.webp", "Avusturya",
                    "7km from you", "₺ 10.0"),
                locationitem("assets/images/venezuela.webp", "Venezuela",
                    "9km from you", "₺ 20.0"),
                locationitem("assets/images/vietnam.webp", "Vietnam",
                    "10km from you", "₺ 15.0"),
                locationitem("assets/images/irlanda.webp", "İrlanda",
                    "12km from you", "₺ 19.0"),
                locationitem("assets/images/filipinler.webp", "Filipinler",
                    "20km from you", "₺ 18.0"),
                locationitem("assets/images/norveç.webp", "Norveç",
                    "6km from you", "₺ 8.0"),
              ],
            ),
          ),
        ],
      ));

  Widget locationitem(
          String photo, String title, String description, String fiyat) =>
      Container(
        width: 165,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color.fromARGB(25, 170, 170, 170),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset(
              photo,
              width: 150,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 56, 56, 56),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey,
                        size: 8,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(236, 125, 87, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    fiyat,
                    style: TextStyle(
                      fontSize: 8,
                      color: Colors.white,
                    ),
                  )),
            ],
          )
        ]),
      );

  Widget toplocation() => Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleitem("Top Locations", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  storyitem("assets/images/resim1.jpeg", "Will S."),
                  storyitem("assets/images/resim2.jpg", "Angelina J."),
                  storyitem("assets/images/resim3.jpg", "Selena G."),
                  storyitem("assets/images/resim4.jpg", "Coldplay"),
                  storyitem("assets/images/resim5.jpg", "Adele"),
                  storyitem("assets/images/resim7.webp", "Halsey"),
                  storyitem("assets/images/resim1.jpeg", "Will S."),
                  storyitem("assets/images/resim2.jpg", "Angelina J."),
                  storyitem("assets/images/resim3.jpg", "Selena G."),
                  storyitem("assets/images/resim4.jpg", "Coldplay"),
                  storyitem("assets/images/resim5.jpg", "Adele"),
                  storyitem("assets/images/resim7.webp", "Halsey"),
                ],
              ),
            ),
          ],
        ),
      );

  Widget searchbox() => Container(
      height: 50,
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color.fromARGB(25, 170, 170, 170),
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.location_on, size: 17, color: Colors.grey),
              SizedBox(
                width: 10,
              ),
              Text(
                "Vietnam",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Icon(Icons.tune_outlined,
              size: 17, color: Color.fromRGBO(236, 125, 87, 1)),
        ],
      ));

  Widget storyitem(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 241, 156, 101),
                  Color.fromARGB(255, 233, 92, 70),
                ],
              ),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(photo),
                radius: 32,
              ),
            ),
          ),
          Text(name,
              style: TextStyle(color: Color.fromARGB(255, 153, 153, 153))),
        ],
      ),
    );
  }

  Padding titleitem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color.fromARGB(255, 56, 56, 56),
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            link,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 10,
              //fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget header() => Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        height: 80,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Serap",
                style: TextStyle(
                  color: Color.fromARGB(255, 153, 153, 153),
                  fontSize: 14,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Explore Country",
                style: TextStyle(
                  color: Color.fromARGB(255, 56, 56, 56),
                  fontSize: 16,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(6.0),
                child: Icon(
                  Icons.sunny,
                  color: Color.fromRGBO(236, 125, 87, 1),
                  size: 18,
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(6.0),
                child: Icon(
                  Icons.notifications,
                  size: 18,
                ),
              ),
            ],
          ),
        ]),
      );

  Widget bottommenu() => Container(
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(
          color: const Color.fromRGBO(255, 243, 243, 243),
          width: 1,
        )),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            bottommenuitem("Home", Icons.home, true),
            bottommenuitem("Moments", Icons.groups, false),
            highlighteditem("Book", Icons.maps_ugc),
            bottommenuitem("Chat", Icons.forum, false),
            bottommenuitem("Profile", Icons.person, false),
          ],
        ),
      );

  Widget bottommenuitem(String title, IconData icon, bool active) {
    var renk = Color.fromRGBO(174, 174, 178, 1);

    if (active) {
      renk = Color.fromRGBO(43, 43, 43, 1);
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 25,
            color: renk,
          ),
          SizedBox(height: 3),
          Text(
            title,
            style: TextStyle(
              color: renk,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget highlighteditem(String title, IconData icon) {
    var renk = Color.fromRGBO(236, 125, 87, 1);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 32,
            color: renk,
          ),
          SizedBox(height: 3),
          Text(
            title,
            style: TextStyle(
              color: renk,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
