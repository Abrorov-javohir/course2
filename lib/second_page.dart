import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(List<String> args) {
  runApp(SecondPage());
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.back,
            ),
          ),
          title: const Text(
            "Course Details",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.purple,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                child: Image.network(
                    "https://img.lovepik.com/original_origin_pic/18/08/23/5eccc349cb57ce0a7ab2af7fef5dfe40.png_wh300.png"),
              ),
              const SizedBox(height: 20),
              Text(
                "English for Beginner",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple[900],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text(
                      "24",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text(
                      "12",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.orange,
                    alignment: Alignment.center,
                    child: Text(
                      "05",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                "About Course",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Text(
                    """sadhkadshjksadhjsadjkhsajkhasdjksadhjkasdhasjkdhasjkdhjdhasdjkhasdjkhsadjkshdajksadhjksadhjskadhsajdhsjhsakjjashjshsjkhsa""",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
