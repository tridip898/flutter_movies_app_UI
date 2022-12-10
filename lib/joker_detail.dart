import 'package:flutter/material.dart';
import 'package:movies_app_ui/movie_player.dart';
import 'package:movies_app_ui/widget/bottom_appbar.dart';

class JokerDetail extends StatelessWidget {
  const JokerDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900.withOpacity(0.9),
        bottomNavigationBar: BottomAppbar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.55,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("lib/images/joker2.webp"),fit: BoxFit.cover)
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 20,
                    right: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey.shade900,width: 1.5)
                          ),
                          child: IconButton(onPressed: (){
                            Navigator.pop(context);
                          }, icon: Icon(Icons.arrow_back_ios,color: Colors.grey.shade200,size: 20,)),
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("lib/images/profile.jpg"),
                                  fit: BoxFit.cover)),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                      left: 10,
                      right: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange.shade300,
                                  borderRadius: BorderRadius.circular(08)
                                ),
                                padding: EdgeInsets.all(07),
                                child: Center(
                                  child: Text("HD",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text("4K",style: TextStyle(fontSize: 18,color: Colors.white),)
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                child: Center(
                                  child: Text("Thriller",style: TextStyle(fontSize: 16,color: Colors.white),),
                                ),
                              ),
                              SizedBox(width: 8,),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                child: Center(
                                  child: Text("Crime",style: TextStyle(fontSize: 16,color: Colors.white),),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange.shade300,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(8),
                        child: Center(
                          child: RichText(text: TextSpan(text: "IMDB 8.4/",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),children: [
                            TextSpan(text: "10",style: TextStyle(color: Colors.grey.shade600,fontSize: 16,fontWeight: FontWeight.normal))
                          ]))
                        ),
                      ),
                      SizedBox(width: 2,),
                      Text("1.2M",style: TextStyle(fontSize: 16,color: Colors.grey.shade500),)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.favorite_border_rounded,color: Colors.grey.shade400,size: 30,),
                      SizedBox(width: 5,),
                      Icon(Icons.share_outlined,color: Colors.grey.shade400,size: 30,),
                      SizedBox(width: 5,),
                      Icon(Icons.bookmark_border_outlined,color: Colors.grey.shade400,size: 30,),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Joker",style: TextStyle(fontSize: 30,color: Colors.white),),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MoviePlayer()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.orange.shade300,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Row(
                        children: [
                          Text("Play",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                          Icon(Icons.play_arrow_rounded,size: 30,)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("2019-2h 2m-ThrillerCrimeDrama",style: TextStyle(fontSize: 16,color: Colors.grey.shade600),),
                  SizedBox(height: 5,),
                  Text("Country: USA,Canada",style: TextStyle(fontSize: 16,color: Colors.grey.shade600),),
                  SizedBox(height: 5,),
                  Text("Translation is original",style: TextStyle(fontSize: 16,color: Colors.grey.shade600),),
                  SizedBox(height: 5,),
                  Text("World premiere: 29 August 2019",style: TextStyle(fontSize: 16,color: Colors.grey.shade600),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
