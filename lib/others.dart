import 'package:flutter/material.dart';

class OthersPage extends StatefulWidget {
  const OthersPage({super.key});

  @override
  State<OthersPage> createState() => _OthersPageState();
}

class _OthersPageState extends State<OthersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
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
          title: Text('Others'),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Title(
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                    child: Text(
                      'Others',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )),
              otherslist(
                title: 'Rate Us',
                icons: Icon(
                  Icons.star_border_outlined,
                  color: Colors.black,
                ),
              ),
              otherslist(
                title: 'Download Our Pro App',
                icons: Icon(Icons.download_outlined, color: Colors.black),
              ),
              otherslist(
                title: 'Check for Updates',
                icons: Icon(Icons.download_outlined, color: Colors.black),
              ),
            ],
          ),
        ));
  }
}

class otherslist extends StatelessWidget {
  final String title;
  final Icon icons;
  const otherslist({
    required this.title,
    required this.icons,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        child: icons,
      ),
      title: Text(title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
    );
  }
}
