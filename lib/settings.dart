import 'package:flutter/material.dart';
import 'package:task3/general.dart';
import 'package:task3/others.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(198, 78, 42, 223),
                    Color.fromRGBO(78, 58, 223, 0.89),
                    Color.fromARGB(192, 77, 97, 251)
                  ]),
              borderRadius: BorderRadius.circular(15)),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.arrow_back_ios_new,
              size: 18,
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02),
            const Text('Settings',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //const SizedBox(height: 100),

          Center(
            child: Container(
              height: 280,
              width: 400,
              // decoration: BoxDecoration(color: Colors.blue),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: 80,
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.23,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 203, 202, 202),
                                  spreadRadius: 0,
                                  blurRadius: 2,
                                  offset: Offset(0, 6))
                            ]),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 20),
                                Text(
                                  'DINGA VINGA',
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('Make Learning Easy',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey,
                                    )),
                                SizedBox(height: 20),
                                Text(
                                  'Dinga Vinga is one of the emerging and aspiring developing company which helps the students in different section.',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                  maxLines: 3,
                                ),
                              ],
                            ),
                          ),
                        )),
                  ),
                  Positioned(
                    top: 15,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        child: Image.asset('image/Ellipse 82.png',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          titleinsidecontainer(
            titleText: 'General',
          ),
          titleinsidecontainer(titleText: 'Follow Us'),
          titleinsidecontainer(titleText: 'Contact Us'),
          titleinsidecontainer(titleText: 'Others'),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 8.0),
            child: Text('More Apps',
                style: TextStyle(color: Colors.grey, fontSize: 16)),
          ),
          SizedBox(height: 10),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardItem(img: 'image/python.webp', txt: 'Python Programs'),
                  CardItem(img: 'image/js.webp', txt: 'JavaScript Programs'),
                  CardItem(img: 'image/j.webp', txt: 'Java Programs'),
                  CardItem(img: 'image/go.webp', txt: 'Golang Programs'),
                  CardItem(img: 'image/C.webp', txt: 'C Programs'),
                  CardItem(img: 'image/C++.webp', txt: 'C++ Programs'),
                  CardItem(img: 'image/C#.webp', txt: 'C# Programs'),
                  CardItem(img: 'image/php.webp', txt: 'PHP Programs'),
                  CardItem(img: 'image/Q.webp', txt: 'QBASIC Programs'),
                  CardItem(img: 'image/codynn.webp', txt: 'Codynn Programs'),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),
          Center(
            child: Text(
              'App Version 1.0.33',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String img;
  final String txt;
  const CardItem({
    required this.img,
    required this.txt,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        Container(
            height: 90,
            width: 90,
            child: Image.asset(
              img,
              fit: BoxFit.cover,
            )),
        Text(txt, style: TextStyle(fontSize: 10))
      ],
    ));
  }
}

class titleinsidecontainer extends StatelessWidget {
  final String titleText;
  const titleinsidecontainer({
    required this.titleText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (titleText == 'General') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GeneralPage()),
          );
        } else if (titleText == 'Others') {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OthersPage(),
              ));
        }
      },
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: ListTile(
            leading: Text(
              titleText,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            trailing: Container(
              child: Icon(Icons.list, size: 30, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
