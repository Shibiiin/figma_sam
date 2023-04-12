import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BwJamees extends StatelessWidget {
  const BwJamees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 16,
                      width: MediaQuery.of(context).size.width / 8,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: NetworkImage(
                              'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-614810.jpg&fm=jpg',
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'James Christin',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '24 minutes ago',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orangeAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orangeAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orangeAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orangeAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orangeAccent,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5,10,0,0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'The Intuitive and intelligent WH bring you new 1000XM4 bring you', style: TextStyle(
                  fontSize: 15,
                ),),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.fromLTRB(0,0,0,0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15,10,0,20),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.15,
                    width: MediaQuery.of(context).size.width*0.3,
                    decoration:  BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547__480.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15,10,0,20),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.15,
                    width: MediaQuery.of(context).size.width*0.3,
                    decoration:  BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547__480.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
          ),
          MySeparator(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){}, icon:Icon(Icons.thumb_up)),
              Text('24'),
              SizedBox(width: 30,),
              IconButton(onPressed: (){}, icon:Icon(Icons.thumb_down)),
              Text('3'),
              SizedBox(width: 50,),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz_sharp))
            ],
          ),

        ],
      ),
    );
  }
}



/// Dotted Dash line
class MySeparator extends StatelessWidget {
  const MySeparator({Key? key, this.height = 1, this.color = Colors.black})
      : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 10.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}