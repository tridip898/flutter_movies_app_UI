import 'package:flutter/material.dart';
import 'package:movies_app_ui/popular.dart';
import 'package:movies_app_ui/widget/appbar.dart';
import 'package:movies_app_ui/widget/bottom_appbar.dart';
import 'package:movies_app_ui/widget/mytab.dart';
import 'package:movies_app_ui/widget/recommend_movie.dart';
import 'package:movies_app_ui/widget/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  List<Widget> myTab=[
    MyTab(text: "Popular"),
    MyTab(text: "New"),
    MyTab(text: "Premieres"),
  ];
  List images=[
    ["lib/images/avatar1.jpg"],
    ["lib/images/venom1.jpg"],
    ["lib/images/interstellar.jpg"],
    ["lib/images/deadpool.jpg"],
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTab.length,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomAppbar(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.videocam_outlined,
              size: 35,
            ),
            backgroundColor: Colors.orangeAccent.shade400,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          backgroundColor: Colors.grey.shade900.withOpacity(0.6),
          body: Column(
            children: [
              //appbar
              AppBarDemo(),
              //search
              SearchBar(),
              //categories
              TabBar(
                labelColor: Colors.orangeAccent,
                  indicatorColor: Colors.orangeAccent,
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelColor: Colors.white,
                  tabs: myTab),
              //tabbarview
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: MediaQuery.of(context).size.height*0.38,
                child: TabBarView(children: [
                  PopularPage(),
                  PopularPage(),
                  PopularPage(),
                ]),
              ),
              //text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("We recommend",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey.shade700,width: 1.5)
                          ),
                          padding: EdgeInsets.all(7),
                          child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey.shade700,width: 1.5)
                          ),
                          padding: EdgeInsets.all(7),
                          child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    height: 400,
                    child: ListView.builder(
                      itemCount: images.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                       return RecommendMovie(
                         image: images[index][0],
                       );
                      }
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
