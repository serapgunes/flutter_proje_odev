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
        body: Column(
          children: [
            Container(
                width: double.infinity,
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add_circle,
                            color: Colors.black87,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.black87,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 8, bottom: 8, right: 20),
                          child: Icon(
                            Icons.send,
                            color: Colors.black87,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            StoryWidget(),
                            StoryWidget2(),
                            StoryWidget3(),
                            StoryWidget4(),
                            StoryWidget5(),
                            StoryWidget6(),
                            StoryWidget7(),
                          ],
                        ),
                      ),
                      postitem("assets/images/resim4.jpg","assets/images/resim8.jpg","coldplay","europe"),
                      postitem("assets/images/resim3.jpg","assets/images/resim10.jpeg","selena_gomez","Met"),
                      postitem("assets/images/resim6.jpg","assets/images/resim9.webp","beyonce","Italy"),

                    ],
                  ),
                ),
                color: Colors.white,
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black12,
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.home, size: 28, color: Colors.black87),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.search, size: 28, color: Colors.black87),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.smart_display,
                        size: 28, color: Colors.black87),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child:
                        Icon(Icons.favorite, size: 28, color: Colors.black87),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.person, size: 28, color: Colors.black87),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container postitem(String avatar, String photo, String name,String location) => Container(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        avatar,
                      ),
                      radius: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          location,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.more_horiz)
              ],
            ),
          ),
          Image.asset(photo),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.black87,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.comment_bank_outlined,
                      color: Colors.black87,
                    ),
                  ],
                ),
                Icon(
                  Icons.flag_circle_outlined,
                  color: Colors.black87,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [                
                  Expanded(
                    child: RichText(
                      maxLines: 3,
                      text:TextSpan(
                        children: [
                          TextSpan(
                            text: "selenagomez",
                            style: (TextStyle(fontWeight: FontWeight.bold))
                            ),
                        TextSpan(text: "  "),
                        TextSpan(text: "amazing!!"),
                        
                        ]
                        
                      ),
                      
                    ),
                    
                  ),
                //     Text(
                //       "selena_gomez",
                //       style: TextStyle(
                //         fontWeight: FontWeight.bold,
                //         color: Colors.black87,
                //         fontSize: 12,
                //       ),
                //     ),
                  
               
                // SizedBox(width: 5),
                // Expanded(
                //   child: Text(
                //     "Amazing!!",
                //     maxLines: 5,
                //     style: TextStyle(
                //       color: Colors.black54,
                //       fontSize: 10,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ]),
      );

  Widget StoryWidget() {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2.5),
            decoration: BoxDecoration(
              color: Colors.blue,
              gradient: LinearGradient(colors: [
                const Color.fromRGBO(214, 71, 103, 1),
                const Color.fromRGBO(241, 166, 117, 1),
              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(1.8),
              decoration: BoxDecoration(
              shape:BoxShape.circle,
              color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/resim1.jpeg"),
                radius: 30,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "will_smith",
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }

  Widget StoryWidget2() {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2.5),
            decoration: BoxDecoration(
              color: Colors.blue,
              gradient: LinearGradient(colors: [
                const Color.fromRGBO(214, 71, 103, 1),
                const Color.fromRGBO(241, 166, 117, 1),
              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(1.8),
              decoration: BoxDecoration(
              shape:BoxShape.circle,
              color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/resim2.jpg"),
                radius: 30,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "angelina_jolie",
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }

  Widget StoryWidget3() {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2.5),
            decoration: BoxDecoration(
              color: Colors.blue,
              gradient: LinearGradient(colors: [
                const Color.fromRGBO(214, 71, 103, 1),
                const Color.fromRGBO(241, 166, 117, 1),
              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(1.8),
              decoration: BoxDecoration(
              shape:BoxShape.circle,
              color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/resim3.jpg"),
                radius: 30,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "selena_gomez",
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }

  Widget StoryWidget4() {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2.5),
            decoration: BoxDecoration(
              color: Colors.blue,
              gradient: LinearGradient(colors: [
                const Color.fromRGBO(214, 71, 103, 1),
                const Color.fromRGBO(241, 166, 117, 1),
              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(1.8),
              decoration: BoxDecoration(
              shape:BoxShape.circle,
              color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/resim4.jpg"),
                radius: 30,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "coldplay",
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }

  Widget StoryWidget5() {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2.5),
            decoration: BoxDecoration(
              color: Colors.blue,
              gradient: LinearGradient(colors: [
                const Color.fromRGBO(214, 71, 103, 1),
                const Color.fromRGBO(241, 166, 117, 1),
              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(1.8),
              decoration: BoxDecoration(
              shape:BoxShape.circle,
              color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/resim5.jpg"),
                radius: 30,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "adele",
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }

  Widget StoryWidget6() {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2.5),
            decoration: BoxDecoration(
              color: Colors.blue,
              gradient: LinearGradient(colors: [
                const Color.fromRGBO(214, 71, 103, 1),
                const Color.fromRGBO(241, 166, 117, 1),
              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(1.8),
              decoration: BoxDecoration(
              shape:BoxShape.circle,
              color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/resim6.jpg"),
                radius: 30,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "beyonce",
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }

  Widget StoryWidget7() {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2.5),
            decoration: BoxDecoration(
              color: Colors.blue,
              gradient: LinearGradient(colors: [
                const Color.fromRGBO(214, 71, 103, 1),
                const Color.fromRGBO(241, 166, 117, 1),
              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(1.8),
              decoration: BoxDecoration(
              shape:BoxShape.circle,
              color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/resim7.webp"),
                radius: 30,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "halsey",
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
