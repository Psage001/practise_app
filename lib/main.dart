import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' app',
      theme: ThemeData(

        
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 69, 226, 21)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int currentpageindex = 0;
  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }
final List<Widget> _pages = [
  Container(
    color: Colors.blue, // Home page background color
    child: Center(child: Text("Home page")),
  ),
  Container(
    color: Colors.green, // Settings page background color
    child: Center(child: Text("Settings page")),
  ),
  Container(
    color: Colors.orange, // Profile page background color
    child: Center(child: Text("Profile")),
  ),
  Container(
    color: Colors.red, // Cart page background color
    child: Center(child: Text("Cart")),
  ),
];


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
   
    return Scaffold(
      appBar: AppBar(
      
        backgroundColor: const Color.fromARGB(255, 253, 17, 0),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white), // Change title text color here
        ),
      ),
      body: _pages[currentpageindex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentpageindex,
        onDestinationSelected: (int index){
          setState(() {
            currentpageindex = index;
          });
        },
        destinations: const <NavigationDestination>[
          NavigationDestination(icon: Icon(Icons.home),
           label: 'Home',
           ),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Cart'),
        ],
      ),
      
    );
  }
}
