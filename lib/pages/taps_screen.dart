

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_product/color/my_colors.dart';
import 'package:my_product/components/cart_screen.dart';
import 'package:my_product/modules/product.dart';
import 'package:my_product/pages/category_screen.dart';
import 'package:my_product/pages/drawer_section_pages/favorite_screen.dart';
import 'package:my_product/pages/home_page.dart';
import 'package:my_product/widgets/main_drawer.dart';
import 'package:get/get.dart';


class TapsScreen extends StatefulWidget {




  @override
  _TapsScreenState createState() => _TapsScreenState();

  static const routeName = '/taps_screen';

}

class _TapsScreenState extends State<TapsScreen> {


    List<Map<String, Object>> _pages ;

  int _selectedPageIndex =0;

  void initState(){
    _pages = [
      {'page': CartScreen(),
        'title': 'My cart',
      },
      {'page': FavoriteScreen(),
        'title': 'Favorites',}];
    super.initState();


  }
  void _selectSection(int value) {
    setState(() {
      _selectedPageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        elevation: 0,
        leading: IconButton(
          onPressed: ()=> Get.back() ,
          icon: Icon(Icons.arrow_back_ios),
        ),


        title: Padding(
          padding: EdgeInsets.only(top: 1),

          child: Text((_pages[_selectedPageIndex]['title']).toString(),


      style: TextStyle(
              color: black,
              fontWeight: FontWeight.bold,
              fontSize: 23,
            ),

          ),
        ),
        backgroundColor: basicColor,
        toolbarHeight: 80,
      ),
     //endDrawer: MainDrawer(),

      backgroundColor: basicColor,

      body:ListView(
          children: <Widget>[
            SizedBox(height: 20,), //between them
            Container(
              height: MediaQuery.of(context).size.height - 180,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(100),
                    //bottomRight:Radius.circular(150),
                  )),


              child: ListView(
                primary: false,
                padding: EdgeInsets.only(left: 25, right: 25),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 45),
                    child: Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height - 300,
                      child: Container(decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(200)
                            //,bottomRight:Radius.circular(150),
                            )),
                          child: (_pages[_selectedPageIndex]['page']) as Widget,

                      ),
                    ),
                  ),
                ],
              ),
            )
          ]
      ),


      // Container(decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.only(topLeft: Radius.circular(200),bottomRight:Radius.circular(150),)),
      //   child: (_pages[_selectedPageIndex]['page']) as Widget,
      // ),


      bottomNavigationBar: BottomNavigationBar(

       // elevation: 0,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
        selectedItemColor: black ,
        selectedFontSize: 20,
        unselectedItemColor: black,
        currentIndex: _selectedPageIndex,

        onTap: _selectSection,
        backgroundColor: basicColor,
        //هنا برضو كان في كونست قبل اللست
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined,color:black,size: 30,),
              label:"Cart",

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_border_outlined,color:black,size: 30,),
              label: "Favorites",

          ),
        ],
      ),
       // drawer:  MainDrawer(),
    );
  }


}
