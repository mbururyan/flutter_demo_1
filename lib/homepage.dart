import 'package:flutter/material.dart';

// import './main.dart';
import './page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar
      appBar: AppBar(
        title: const Text('Home Page'),
      ),

      // drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Text('Navigation Menu', style: TextStyle(color: Colors.white, fontSize: 24),)
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                // Navigate to page 2
                Navigator.pop(
                  context,  
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.pageview),
              title: const Text('Page 2'),
              onTap: () {
                // Navigate to page 2
                // Navigator.pop(
                //   context,  
                
                // );
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page2()),
                );
              },
            ),
          ],
        ),
      ),




      body: Center(
        child: Text('Page 1 of the mobile application '),
      ),
    );
  }
}
