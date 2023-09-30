import 'package:flutter/material.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({super.key});

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
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
          title: Text('General'),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width * 0.98,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 8.0),
                child: Title(
                    color: Colors.black,
                    child: Text(
                      'General',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              generalList(
                title: 'Dark Mode',
                switchValue: true,
              ),
              generalList(
                title: 'Notification',
                switchValue: true,
              ),
            ],
          ),
        ));
  }
}

class generalList extends StatefulWidget {
  final String title;
  final bool switchValue;
  const generalList({required this.title, required this.switchValue, Key? key})
      : super(key: key);

  @override
  State<generalList> createState() => _generalListState();
}

class _generalListState extends State<generalList> {
  bool _isSwitched = false;
  @override
  void initState() {
    super.initState();
    _isSwitched = widget.switchValue;
  }

  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(
          widget.title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        trailing: Switch(
          value: _isSwitched,
          onChanged: (value) {
            setState(() {
              _isSwitched = value;
            });
          },
        ));
  }
}
