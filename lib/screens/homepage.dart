import 'package:flutter/material.dart';
import 'package:tradingapp/screens/notificationoage.dart';
import 'package:tradingapp/screens/settingspage.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

_displayDrawer() {
  final drawer = Drawer();
  //Scaffold.of(context).openDrawer(drawer);
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.black,
          title: Text('Trading app'),
          leading: IconButton(
              onPressed: () => _displayDrawer(), icon: Icon(Icons.menu)),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Notificationpage()));
                },
                icon: Icon(Icons.notifications)),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Settingpage()));
                },
                icon: Icon(Icons.manage_accounts))
          ],
          centerTitle: true,
        ),
        body: Row(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Card(
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Column(
                        //  mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset(
                                          'assets/images/coins.jpeg')),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(
                                  'cash',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    color: Colors.grey.shade900,
                  ),
                ),
              ],
            ),
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   backgroundColor: Colors.grey.shade800,
        //   child: Icon(Icons.edit),
        // ),

        drawer: Drawer(
          child: Text("this is a drawer ;)"),
        ));
  }
}
