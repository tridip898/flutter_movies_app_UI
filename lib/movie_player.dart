import 'package:flutter/material.dart';
import 'package:movies_app_ui/widget/bottom_appbar.dart';
import 'package:movies_app_ui/widget/movie_list.dart';
import 'package:movies_app_ui/widget/share_icon.dart';

class MoviePlayer extends StatelessWidget {
  MoviePlayer({Key? key}) : super(key: key);

  List moviePoster=[
    ["lib/images/interstellar.jpg","Interstellar"],
    ["lib/images/captain_america.jpg","Captain America"],
    ["lib/images/iron_man.jpg","Iron Man"],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppbar(),
        backgroundColor: Colors.grey.shade900.withOpacity(0.6),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //appbar
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 10,right: 10,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300.withOpacity(0.2),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey.shade900,width: 1.5)
                    ),
                    child: IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_ios,color: Colors.grey.shade200,size: 20,),)
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
            //video
            Container(
              height: MediaQuery.of(context).size.height*0.3,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("lib/images/joker4.jpg"),fit: BoxFit.cover)
              ),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange.shade300,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  padding: EdgeInsets.all(5),
                  child: Icon(Icons.play_arrow_rounded,size: 50,),
                ),
              ),
            ),
            //share
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Share in",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                  Row(
                    children: [
                      ShareIcon(icon: "lib/icons/f.png"),
                      SizedBox(width: 3,),
                      ShareIcon(icon: "lib/icons/whatsapp.png"),
                      SizedBox(width: 3,),
                      ShareIcon(icon: "lib/icons/instagram.png"),
                      SizedBox(width: 3,),
                      ShareIcon(icon: "lib/icons/messenger.png"),
                      SizedBox(width: 3,),
                      ShareIcon(icon: "lib/icons/telegram.png"),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("What else to see",style: TextStyle(fontSize: 20,color: Colors.grey.shade200,fontWeight: FontWeight.w700),),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey.shade700,width: 1.5)
                        ),
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 15,),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey.shade700,width: 1.5)
                        ),
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 15,),
                      )
                    ],
                  )
                ],
              ),
            ),

            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height*0.3,
                child: ListView.builder(
                  itemCount: moviePoster.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return MovieList(
                        image: moviePoster[index][0],
                        text: moviePoster[index][1]);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
