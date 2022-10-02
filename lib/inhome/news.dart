import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:orange/newsODCS.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text('News',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
    onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsODCS()));},
              child: Hero(tag:'news' ,
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black12),
                  height: 220,
                  width: double.infinity,
                  child:Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [

                            Text('ODCs',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.deepOrange),
                              child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset('icons/share.svg',color: Colors.white),
                                ),
                                Container(color: Colors.white,height: 30,width: 1,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset('icons/copy.svg',color: Colors.white,),
                                )
                              ]),
                            ),

                          ],
                        ),
                      ),
                      Image.asset(
                        'icons/logo.png',
                        width: 500.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 30,),
                      Text('ODC Supports All Universties',style: TextStyle(color: Colors.white,fontSize: 20),)
                    ],
                  ) ,
                ),
              ),
            ),
          )
        ],
      ),
    );



  }
}
