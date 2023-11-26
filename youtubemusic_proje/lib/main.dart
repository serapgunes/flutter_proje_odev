import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube Music',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromRGBO(62, 36, 17, 1),
                    const Color.fromRGBO(48, 14, 32, 1),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(width: 30, "assets/images/logo.png"),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Music",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 27,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.podcasts, color: Colors.white),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.search, color: Colors.white),
                            SizedBox(
                              width: 15,
                            ),
                            CircleAvatar(
                              radius: 13,
                              backgroundImage:
                                  AssetImage("assets/images/resim3.jpg"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        categoryitem("Energize"),
                        categoryitem("Workout"),
                        categoryitem("Feel good"),
                        categoryitem("Relaxation"),
                        categoryitem("Chill out"),
                        categoryitem("Rock"),
                        categoryitem("Pop"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Color.fromRGBO(7, 5, 8, 1),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "START RADİO FROM A SONG",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 187, 186, 186),
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Quick Picks",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 3, bottom: 3, left: 9, right: 9),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Text(
                                "Play all",
                                style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 187, 186, 186),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        musicrow("assets/images/cover1.png", "İnto you",
                            "Ariana Grande"),
                        musicrow("assets/images/cover2.webp", "Blinding Lights",
                            "The Weeknd"),
                        musicrow(
                            "assets/images/cover3.jpg", "Sparks", "Coldplay"),
                        musicrow("assets/images/cover4.jpeg",
                            "That's Hilarious", "Charlie Puth"),
                        musicrow(
                            "assets/images/cover5.jpg", "Easy On Me", "Adele"),
                        musicrow(
                            "assets/images/cover6.png", "Nightmare", "Halsey"),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Forgotten favorites",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 3, bottom: 3, left: 9, right: 9),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Text(
                                "Play all",
                                style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 187, 186, 186),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              musicrow2("assets/images/cover1.png", "İnto you",
                                  "Ariana Grande"),
                              musicrow2(
                                  "assets/images/cover3.jpg", "Sparks", "Coldplay"),
                              musicrow2("assets/images/cover4.jpeg",
                                  "That's Hilarious", "Charlie Puth"),
                              musicrow2(
                                  "assets/images/cover5.jpg", "Easy On Me", "Adele"),
                              musicrow2(
                                  "assets/images/cover6.png", "Nightmare", "Halsey"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: Color.fromRGBO(33, 33, 33, 1),
              height: 60,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.play_circle,
                          color: Colors.white,
                        ),
                        Text(
                          "Samples",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.explore,
                          color: Colors.white,
                        ),
                        Text(
                          "Explore",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.subscriptions,
                          color: Colors.white,
                        ),
                        Text(
                          "Library",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.slideshow,
                          color: Colors.white,
                        ),
                        Text(
                          "Upgrade",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding musicrow2(String photo, String title, String artist) {
    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  photo,
                                  width: 150,
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  title,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  artist,
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 181, 181, 181),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
  }

  Widget musicrow(String photo, String title, String artist) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                photo,
                width: 65,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    artist,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 181, 181, 181),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
    );
  }

  Container categoryitem(
    String text,
  ) {
    return Container(
      padding: const EdgeInsets.only(top: 6.0, bottom: 6, left: 12, right: 12),
      margin: const EdgeInsets.only(
        left: 3,
        right: 3,
      ),
      decoration: BoxDecoration(
          color: const Color.fromARGB(19, 255, 255, 1),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color.fromARGB(36, 255, 255, 255),
          )),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
