import 'package:flutter/material.dart';
import 'package:myloginapp/Screens/Google.dart';

void main() {
  runApp(MaterialApp(
    home: MyloginApp(),
  ));
}

class MyloginApp extends StatelessWidget {
  const MyloginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home_Page();
  }
}

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 81, 121, 142),
        title: Text("Home"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Google();
                  },
                ));
              },
              icon: Icon(Icons.skip_next))
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/01/27/01/02/texture-2012078_1280.jpg"))),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                child: Image(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/11/14/17/39/person-1824144_1280.png")),
                radius: 50,
              ),
              Card(
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(height: 25),
              Center(
                child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: "Enter your email",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        contentPadding: EdgeInsets.symmetric(horizontal: 30),
                        label: Text(""))),
              ),
              Divider(height: 30),
              Center(
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.visibility_off),
                        hintText: "No less than 8 digits",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        contentPadding: EdgeInsets.symmetric(horizontal: 30),
                        label: Text("Enter your PasswordS"))),
              ),
              Divider(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.fingerprint),
                    radius: 35,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 15),
                      CircleAvatar(
                        child: Icon(Icons.dialpad),
                        radius: 35,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 15),
                      CircleAvatar(
                        child: Text("Enter"),
                        radius: 35,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
