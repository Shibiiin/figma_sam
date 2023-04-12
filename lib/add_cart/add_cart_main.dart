
import 'package:flutter/material.dart';

void main()
{
  runApp(const MaterialApp(home: Cart(),
  debugShowCheckedModeBanner: false,));

}



class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;

    return Scaffold(

      body: Column(
        children: [
          Container(
            height: height*.17,
            decoration: const BoxDecoration(
              borderRadius:
              BorderRadius.only(bottomLeft: Radius.circular(50)),
              color: Colors.cyan,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15,0,0,0),
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back,size: 30,color: Colors.white,),
                  ),
                 const Padding(
                    padding:  EdgeInsets.fromLTRB(90,0,0,0),
                    child: Text('Add Cart', style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),),
                  )
                ],
              ),
            )
            ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15,30,15,0),
            child: Container(
              height: MediaQuery.of(context).size.height/10,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 0.5
                ),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding:  EdgeInsets.fromLTRB(10,5,0,0),
                    child: Text('Name', style: TextStyle(
                      fontSize: 20,color: Colors.black38
                    ),),

                  ),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(10,10,0,0),
                    child: Text('James Christin', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),),

                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15,30,15,0),
            child: Container(
              height: MediaQuery.of(context).size.height/10,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.black,
                    width: 0.5
                ),
                borderRadius:const BorderRadius.all(Radius.circular(5)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                   Padding(
                    padding:  EdgeInsets.fromLTRB(10,5,0,0),
                    child: Text('Card', style: TextStyle(
                        fontSize: 20,color: Colors.black38
                    ),),

                  ),
                    Padding(
                    padding:  EdgeInsets.fromLTRB(10,10,0,0),
                    child: Text('7879 6768 7676 6767', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),),

                  ),
                ],
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15,30,5,0),
                child: Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/2.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.black,
                        width: 0.5
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const [
                        Padding(
                        padding:  EdgeInsets.fromLTRB(10,5,0,0),
                        child: Text('Exp.Date', style: TextStyle(
                            fontSize: 20,color: Colors.black38
                        ),),

                      ),
                      Padding(
                        padding:  EdgeInsets.fromLTRB(10,10,0,0),
                        child: Text('03/31', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),),

                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15,30,15,0),
                child: Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/2.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.black,
                        width: 0.5
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const [
                      Padding(
                        padding:  EdgeInsets.fromLTRB(10,5,15,0),
                        child: Text('CVV', style: TextStyle(
                            fontSize: 20,color: Colors.black38
                        ),),

                      ),
                      Padding(
                        padding:  EdgeInsets.fromLTRB(10,10,15,0),
                        child: Text('879', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),),

                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(15,30,15,0),
            child: Container(
              height: MediaQuery.of(context).size.height/10,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.black,
                    width: 0.5
                ),
                borderRadius:const BorderRadius.all(Radius.circular(5)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding:  EdgeInsets.fromLTRB(10,5,0,0),
                    child: Text('Country', style: TextStyle(
                        fontSize: 20,color: Colors.black38
                    ),),

                  ),
                  Padding(
                    padding:  const EdgeInsets.fromLTRB(10,10,10,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('USA', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),),
                        Icon(Icons.keyboard_arrow_down_outlined,size: 30,)
                      ],
                    ),

                  ),
                ],
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: ElevatedButton(onPressed: () {  },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )
            ), child: const Text('Add Cart',
            style: TextStyle(
              fontSize: 20
            ),),
            ),
          ),
          )
        ],
      ),
    );
  }
}
