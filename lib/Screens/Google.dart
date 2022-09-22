import 'package:flutter/material.dart';

class Google extends StatelessWidget {
  const Google({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        centerTitle: true,
        title: Image(
            width: 150,
            fit: BoxFit.scaleDown,
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2014/08/02/10/07/google-408194_1280.png")),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.skip_next))],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.person,
                  ),
                  radius: 30,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "ALL",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "IMAGES",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 120,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.menu))
              ],
            ),
          ),
          Container(
            height: 180,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/10/31/12/54/google-1015751_1280.png"))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.photo_camera),
                          suffixIcon: Icon(Icons.search),
                          hintText: "What is in your mind ?",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          contentPadding: EdgeInsets.symmetric(horizontal: 30),
                          label: Text(""))),
                ),
              ),
              Text("Google offered in : العربية"),
            ],
          ),
        ],
      ),
    );
  }
}
