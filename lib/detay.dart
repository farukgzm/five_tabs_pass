

import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Detay extends StatefulWidget {
 


// ignore: prefer_typing_uninitialized_variables
var imgPath;
Detay({super.key, this.imgPath});

  

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children:<Widget>[Hero(
          tag: widget.imgPath,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(widget.imgPath),fit: BoxFit.cover)),
        
          ),
        ),
        Positioned(
          left: 15,
          right: 15,
          bottom: 15,

          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 4,
            child: Container(
              height: 230,
              width: MediaQuery.of(context).size.width-30,
              decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children:<Widget> [
                      Padding(padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey,),
                        image: const DecorationImage(image: AssetImage('assets/dress.jpg'),fit: BoxFit.contain),
                        ),
                      ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  <Widget>[
                          const Text('LAMIATED',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5,),
                          const Text('Louis vuiton',style: TextStyle(fontSize: 16,color: Colors.grey)
                          ),
                          const SizedBox(height: 10,),
                          SizedBox(
                            height: 30,
                            width: MediaQuery.of(context).size.width-170,
                            child: const Text('on button V-neck sling long-sleeved waist female stitching dress',
                            style: TextStyle(fontSize: 13,color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const Divider(),

                  Padding(padding: const EdgeInsets.only(left: 15,top: 10,bottom: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:<Widget> [
                    const Text('\$6500',style: TextStyle(fontSize: 22),),
                    Container(
                      margin: const EdgeInsets.only(right: 30),
                      child: FloatingActionButton(onPressed: () { },
                      backgroundColor: Colors.brown,
                      child: const Center(child: Icon(Icons.arrow_forward_ios),),
                      ),
                      ),
                    
                  ]),
                  
                  ),



                ],
              ),
            ),
          )
          
          )



        ], 
      ),

    );
  }
}