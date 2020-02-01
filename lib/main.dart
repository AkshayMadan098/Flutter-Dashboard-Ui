import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:dynamic_theme/theme_switcher_widgets.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
    Brightness brightness;
 
  Widget custombutton(text,color){
    return MaterialButton(
      
      
      padding: EdgeInsets.all(20),
      minWidth: 100,
      height: 105,
      color: color, 
      child:Stack(
        children: <Widget>[
          Image(
            image: AssetImage("assets/3.png"),
            height: 105,
            width: 140,
          ),
          Text(text,style: TextStyle(fontSize: 20,color: Colors.white),),
        ],
      ) ,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      
      onPressed: (){
        
              },);
              
          }
          @override
          Widget build(BuildContext context) {
            return MaterialApp(
              title: "Dashboard",
              theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
            
             home :Scaffold(
               appBar: AppBar(
                 title: Text("Dashboard"),
               ),
                  drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
       UserAccountsDrawerHeader(
      accountEmail: Text("Akshay@gmail.com"),
      accountName: Text("Akshay Madan"),
      currentAccountPicture: CircleAvatar(
        child: Text("A"),
      ),
       ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Messages'),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Profile'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Profile'),
        ),
      ],
    ),
  ),
               body: Column(
                 children: <Widget>[
                      Image(
                   image: AssetImage("assets/software.png"),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(right: 260),
                     child: Text("School",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(right: 260),
                     child: Text("Education",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   ),
                   Padding(padding: EdgeInsets.all(4),),
                   
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                      
                      custombutton("Maths", Colors.blue,),
                      
                       Padding(padding: EdgeInsets.all(10),),
                       custombutton("Physics", Colors.red),
                       
                     ],
                   ),
                     Padding(padding: EdgeInsets.all(4),),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       custombutton("Chemistry", Colors.pink),
                          Padding(padding: EdgeInsets.all(10),),
                       custombutton("Biology", Colors.orange)
                     ],
                   ),
                    Padding(padding: EdgeInsets.all(4),),
                   
                    
                   
                   
                 ],
              
              
               ),
             ) 
            );
          }
        
 }