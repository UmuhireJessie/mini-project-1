import 'package:flutter/material.dart';
import 'Signin.dart';
import 'Signup.dart';
import 'Splash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'B-Ticket App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: Splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> _pages = [
    MyHomePage(),
    SignInPage(),
    Splash(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => _pages[_selectedIndex]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Name'),
                accountEmail: Text(''),
                currentAccountPicture: CircleAvatar(
                  child: Icon(FontAwesomeIcons.person),
                )),
            ListTile(
                leading: Icon(FontAwesomeIcons.person), title: Text('Profile')),
            ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
          ],
        ),
      ),
      body: Container(
          color: Color(0xFFF4F4F4),
          child: Column(
            children: [
              Stack(children: [
                Container(
                  height: 378,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 98, 1, 0.53),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                  ),
                  child: Column(children: [
                    SizedBox(height: 50),
                    Container(
                        child: Column(
                      children: [
                        Text(
                          "B-Tickets",
                          style: TextStyle(fontSize: 20, fontFamily: 'Bungee'),
                        ),
                        Container(
                          // margin: EdgeInsets.all(30),
                          width: 297,
                          height: 192,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/car.png'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Column(children: [
                            Text(
                              "Your Best Online Bus Ticketing System ",
                              style:
                                  TextStyle(fontSize: 13, fontFamily: 'Bungee'),
                            ),
                            Text(
                              "in Rwanda",
                              style:
                                  TextStyle(fontSize: 13, fontFamily: 'Bungee'),
                            ),
                          ]),
                        ),
                      ],
                    ))
                  ]),
                ),

                // Top bar with time and icons
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '11:30 PM MTN',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(Icons.wifi),
                          SizedBox(width: 8),
                          Icon(FontAwesomeIcons.signal, size: 17),
                          SizedBox(width: 8),
                          Icon(FontAwesomeIcons.batteryThreeQuarters),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
              SizedBox(height: 60),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 274,
                    height: 34,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignOutPage()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'DM Sans Med',
                            color: Color(0xff000000)),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(255, 77, 1, 0.53),
                        ),
                        elevation: MaterialStateProperty.all<double>(0),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.88),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    width: 274,
                    height: 34,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInPage()));
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'DM Sans Med',
                            color: Color(0xff000000)),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(255, 77, 1, 0.53),
                        ),
                        elevation: MaterialStateProperty.all<double>(0),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.88),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus),
            label: 'Buy Ticket',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_number),
            label: 'My Ticket',
            tooltip: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(255, 98, 1, 0.53),
        onTap: _onItemTapped,
      ),
    );
  }
}
