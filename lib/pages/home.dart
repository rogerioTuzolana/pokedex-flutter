import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

enum navigatorOptions{
  pokedex,
  regions,
  favorites,
  menu,
}

class _HomePageState extends State<HomePage> {
  var currentPage = navigatorOptions.pokedex;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: body(size),
      bottomNavigationBar: SafeArea(
        child: Container(
          
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color.fromARGB(90, 126, 124, 124), width: 1.5, style: BorderStyle.solid),
            borderRadius: BorderRadius.all(Radius.circular(40))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /*InkWell(
              onTap: (){},
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Icon(Icons.access_alarm),
                Text("data")
              ],) 
              )*/
              navigatorListOptions(1,"Pokedéx","images/pokeball.png",
              currentPage == navigatorOptions.pokedex ?true:false),
              navigatorListOptions(2,"Regiões",Icons.location_on_outlined,
              currentPage == navigatorOptions.regions ?true:false),
              navigatorListOptions(3,"Favoritos",Icons.favorite_outline,
              currentPage == navigatorOptions.favorites ?true:false),
              navigatorListOptions(4,"Menu",Icons.menu,
              currentPage == navigatorOptions.menu ?true:false),
            ],
          ),
        ),
      ),
    );
  }

  Widget navigatorListOptions(int id, String title, var icon, bool selected){
    print(icon.runtimeType);
    return InkWell(
        onTap: (){
          if (id != 5) {
            //Navigator.pop(context);
          }
          
          /*setState(() {
            if (id == 1) {
              currentPage = DrawerSelectOptions.home;
            } else if(id == 2){
              currentPage = DrawerSelectOptions.historic;
            }else if(id == 3){
              currentPage = DrawerSelectOptions.settings;
            }else if(id == 4){
              currentPage = DrawerSelectOptions.help;
            }else if(id == 5){
              //currentPage = DrawerSelectOptions.logout;
              showModalBottomSheet(context: context, builder: (context)=>confirmLogout(context));

            }
          });*/
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            (icon.runtimeType==IconData)?Icon(
              icon,
              size: 20,
              color: selected ? Colors.blueAccent: Color.fromARGB(221, 34, 34, 34),
            ):Image.asset(icon,width: 20,height: 20,),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: selected ? Colors.blueAccent: Color.fromARGB(221, 34, 34, 34),
              ),
            ),
          ],
        ),
      );
    
  }

  body(Size size){
    return
    Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            //margin: EdgeInsets.all(100),
            height: size.height * 0.3,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              //shape: BoxShape.circle,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(70),
              ),
              
            ),
          ),
          Container(
            //height: size.height * 0.7,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20,left: 15),
                  alignment: Alignment.topLeft,
                  child: Text("Venusaur",style: 
                    TextStyle(
                      color: Colors.black87,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                    
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,left: 15),
                  alignment: Alignment.topLeft,
                  child: Text("Nº003",style: 
                    TextStyle(
                      color: Color.fromARGB(221, 44, 43, 43),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                    
                  ),
                ),
                Row(
                  children: [
                    SizedBox(height: 50,),
                    Container(
                      padding: EdgeInsets.only(top:5, bottom: 5, left: 15,right: 15),
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        //shape: BoxShape.circle,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        
                      ),
                      margin: EdgeInsets.only(top: 5,left: 15),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.fire_hydrant_alt_rounded,)
                          ),
                          
                          Text(" Fogo",style:
                            TextStyle(
                              color: Color.fromARGB(221, 44, 43, 43),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(top:5, bottom: 5, left: 15,right: 15),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        //shape: BoxShape.circle,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        
                      ),
                      margin: EdgeInsets.only(top: 5,left: 15),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.icecream_rounded,)
                          ),
                          
                          Text(" Gelo",style: 
                            TextStyle(
                              color: Color.fromARGB(221, 44, 43, 43),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20,left: 15,right: 15),
                  child: const Text("Dependencies specify other packages that your package needs in order to work.To automatically.",style: 
                          TextStyle(
                            color: Color.fromARGB(221, 44, 43, 43),
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.none,
                          ),
                          textAlign: TextAlign.justify,
                  ),
                ),
                
                Container(
                  width: size.width*0.9,
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(90, 126, 124, 124), width: 0.2, style: BorderStyle.solid),
                    color: Colors.white,
                    //shape: BoxShape.circle,
                    //borderRadius: BorderRadius.horizontal(),
                    
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Row(
                          children: const [
                            Icon(Icons.balance_rounded,size: 14,),
                            Text(" PESO",style: TextStyle(
                                color: Color.fromARGB(221, 44, 43, 43),
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.none,
                              ),
                            )
                          ],
                        ),
                      ),
                      
                      Container(
                        width: size.width*0.42,
                        padding: EdgeInsets.only(top: 10,bottom: 10),
                        margin: EdgeInsets.only(top: 5/*,left: 15*/,),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(90, 126, 124, 124), width: 1.0, style: BorderStyle.solid),
                          color: Colors.white,
                          //shape: BoxShape.circle,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          
                        ),
                        child:Text("90,5 kg",style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),
                          textAlign: TextAlign.center,
                        ),

                      ),
                    ]),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Row(
                          children: const [
                            Icon(Icons.height_rounded,size: 14,),
                            Text(" ALTURA",style: TextStyle(
                                color: Color.fromARGB(221, 44, 43, 43),
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.none,
                              ),
                            )
                          ],
                        ),
                      ),
                      
                      Container(
                        width: size.width*0.42,
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.only(top: 10,bottom: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(90, 126, 124, 124), width: 1.0, style: BorderStyle.solid),
                          color: Colors.white,
                          //shape: BoxShape.circle,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          
                        ),
                        child:Text("1,9 m",style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),
                          textAlign: TextAlign.center,
                        ),

                      ),
                    ]),

                  ],
                ),

                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Row(
                          children: const [
                            Icon(Icons.category_rounded,size: 14,),
                            Text(" CATEGORIA",style: TextStyle(
                                color: Color.fromARGB(221, 44, 43, 43),
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.none,
                              ),
                            )
                          ],
                        ),
                      ),
                      
                      Container(
                        width: size.width*0.42,
                        padding: EdgeInsets.only(top: 10,bottom: 10),
                        margin: EdgeInsets.only(top: 5/*,left: 15*/,),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(90, 126, 124, 124), width: 1.0, style: BorderStyle.solid),
                          color: Colors.white,
                          //shape: BoxShape.circle,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          
                        ),
                        child:Text("Flame",style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),
                          textAlign: TextAlign.center,
                        ),

                      ),
                    ]),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Row(
                          children: const [
                            Icon(Icons.person,size: 14,),
                            Text(" HABILIDADE",style: TextStyle(
                                color: Color.fromARGB(221, 44, 43, 43),
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.none,
                              ),
                            )
                          ],
                        ),
                      ),
                      
                      Container(
                        width: size.width*0.42,
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.only(top: 10,bottom: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(90, 126, 124, 124), width: 1.0, style: BorderStyle.solid),
                          color: Colors.white,
                          //shape: BoxShape.circle,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          
                        ),
                        child:Text("Blaze",style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),
                          textAlign: TextAlign.center,
                        ),

                      ),
                    ]),

                  ],
                ),
              ],
            ),
          )
        ]
      ),
    );
  }
}