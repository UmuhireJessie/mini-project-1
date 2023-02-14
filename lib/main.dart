import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'B-ticket-App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('11:30 PM'),
      backgroundColor: Colors.deepOrange[400], actions: [
        Icon(Icons.wifi),
        SizedBox(width: 8),
        Icon(FontAwesomeIcons.signal),
        SizedBox(width: 8),
        Icon(FontAwesomeIcons.batteryThreeQuarters),
        SizedBox(width: 8),
      ]),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Patchu'),
              accountEmail: Text('Patchu@alustudent.com'),
              currentAccountPicture: CircleAvatar(),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
          child: Stack(children: [
        Container(
            // margin: EdgeInsets.all(30),
            width: 500,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                    image: AssetImage('assets/cars.jpeg'), fit: BoxFit.cover)),
            child: Text(
              "B-TICKETS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 34,
              ),
              textAlign: TextAlign.center,
            )),
        Container(
            width: 500,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.deepOrange.shade400.withOpacity(0.4))),
        Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Your Best Online Bus Ticketing System\n in Rwanda.',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ))),
              ],
            ),
          ),
        ),
        // Center(child:
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                          onPressed: () => {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )
                          ),
                          child: Text('Sign up')))),
              Divider(),
              Center(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                          onPressed: () => {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )
                          ),
                          child: Text('Sign in')))),
            ],
          ),
        ),
        // ),
        // Padding(
        //     padding: EdgeInsets.all(200),
        //     child:
        //         Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //           ElevatedButton(
        //               onPressed: () => {},
        //               style: ElevatedButton.styleFrom(
        //                   primary: Color.fromARGB(255, 248, 124, 8),
        //                   padding: EdgeInsets.symmetric(
        //                       horizontal: 50, vertical: 20),
        //                   textStyle: TextStyle(
        //                       fontSize: 30, fontWeight: FontWeight.bold)),
        //               child: Text('Sign up')),
        //           Divider(),
        //           ElevatedButton(
        //               onPressed: () => {},
        //               style: ElevatedButton.styleFrom(
        //                   primary: Color.fromARGB(255, 248, 124, 8),
        //                   padding: EdgeInsets.symmetric(
        //                       horizontal: 50, vertical: 20),
        //                   textStyle: TextStyle(
        //                       fontSize: 30, fontWeight: FontWeight.bold)),
        //               child: Text('Sign in')),
        //         ]),
        //       )
      ])),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.deepOrange[400],
        child: Row(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home), onPressed: () {}),
            IconButton(
              icon: Icon(Icons.bus_alert_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.pages),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

// ElevatedButton.icon(onPressed: () => {}, 
//             icon: Icon(Icons.home),

//             label: Text("Home")),
//             ElevatedButton.icon(onPressed: () => {}, 
//             icon: Icon(Icons.cabin),
//             label: Text("Buy_Ticket")),

//             ElevatedButton.icon(onPressed: () => {}, 
//             icon: Icon(Icons.pageview_sharp),
//             // label: Text("My_Ticket"))