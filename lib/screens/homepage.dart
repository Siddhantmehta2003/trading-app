import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        // title: Text('Trading app'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings))
        ],
        centerTitle: true,
      ),
      body: Row(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset('assets/images/coins.jpeg')),
                      Text(
                        'cash',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                color: Colors.grey.shade900,
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
    );
  }
}
