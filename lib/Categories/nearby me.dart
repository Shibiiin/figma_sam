import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NearByMe extends StatelessWidget {
  const NearByMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.width;
    final width = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      color: Colors.cyan,
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.hotel,
                        size: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('Hotel', style: TextStyle(fontSize: 15),),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      color: Colors.cyan,
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.plane,
                        size: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('Flight', style: TextStyle(fontSize: 15),),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      color: Colors.cyan,
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.train,
                        size: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('Train', style: TextStyle(fontSize: 15),),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      color: Colors.cyan,
                      onPressed: () {},
                      icon: Icon(Icons.grid_view_sharp,
                        size: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('More', style: TextStyle(fontSize: 15),),
                  )
                ],
              ),
            ],
          ),
        ),
        ///near by me

        Padding(
          padding: const EdgeInsets.only(left: 15, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Nearby me',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                    color: Colors.deepOrange, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5, right: 15, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(color: Colors.black12, blurRadius: 10),
                      ]),
                  height: 200,
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 9,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1562375121-ea1bc3e8fc10?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bGFrZSUyMGxhbmRzY2FwZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Text(
                              'Lake View',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 15),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                            Text(
                              '4.5',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                              size: 15,
                            ),
                            Text(
                              'USA',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 15,
                              color: Colors.grey),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:  [
                            Row(
                              children:const [
                               Text(
                                  '\$40',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: Colors.orangeAccent,
                                  ),
                                ),
                                Text(
                                  '/Person',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),

                            Icon(
                              Icons.favorite,
                              color: Colors.orangeAccent,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

           /// 2nd
              Padding(
                padding: EdgeInsets.only(left: 5, right: 15, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(color: Colors.black26, blurRadius: 10),
                      ]),
                  height: 200,
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 9,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  'https://thumbs.dreamstime.com/b/plateau-scenery-landscape-reflection-tibet-beautiful-water-34858251.jpg'),
                              fit: BoxFit.fitHeight,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Text(
                              'Hill View',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 15),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                            Text(
                              '4.7',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                              size: 15,
                            ),
                            Text(
                              'Berlin',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 15,
                              color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:  [
                            Row(
                              children:const [
                                Text(
                                  '\$40',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: Colors.orangeAccent,
                                  ),
                                ),
                                Text(
                                  '/Person',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),

                            Icon(
                              Icons.favorite,
                              color: Colors.orangeAccent,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 10,right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Popular for Me',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                'See all',
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),


        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 10),
                ]),
            height: MediaQuery.of(context).size.height/5,
            width: MediaQuery.of(context).size.width/1,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://thumbs.dreamstime.com/b/plateau-scenery-landscape-reflection-tibet-beautiful-water-34858251.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Text('Mountain Tip', style: TextStyle(
                            fontSize: 20,
                          ),),
                          SizedBox(width: MediaQuery.of(context).size.width/14,),
                          Icon(Icons.star, color: Colors.orangeAccent,),
                          Text('4.5')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on, color: Colors.grey,),
                          Text('USA', style: TextStyle(
                            fontSize: 20,
                          ),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:  [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:const [
                              Text(
                                '\$40',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.orangeAccent,
                                ),
                              ),
                              Text(
                                '/Person',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 60,),
                          Icon(
                            Icons.favorite,
                            color: Colors.orangeAccent,
                            size: 20,
                          ),
                        ],
                      ),
                    ),



                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
