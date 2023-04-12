
import 'package:flutter/material.dart';

import 'Categories/Navbar.dart';
import 'Categories/nearby me.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

  int selectPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
        currentIndex: selectPage,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
      ),

      body:CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
                height: 240,
                child: Navbar()),
          ),
          const SliverToBoxAdapter(
          child: SizedBox(
            height: 600,
              child: NearByMe()),
            ),




        ],
      ),
    );
  }
}
