import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: kToolbarHeight + 180,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:const EdgeInsets.only(left: 20, top: 70),
                  child: ListTile(
                    title: Text(
                      'Location',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                    subtitle: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 25,
                        ),
                        Text(
                          'New York, \t USA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_sharp,
                          size: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    trailing: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 30),
                      child:  SizedBox(
                        height: 50,
                        width: 280,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search Hotel, Flight etc',
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                            )
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.menu)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
