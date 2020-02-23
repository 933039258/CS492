
import './journalentry.dart';

import 'package:flutter/material.dart';

 class App extends StatefulWidget {
  
 @override
   MyAppState createState(){
   return new MyAppState();
 }
 }
 class MyAppState extends State<App>{
  static final routes = {
    
    Journal.routeName: (context) => Journal(),
    
  };
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:routes,
      title: 'Welcome',
      theme: darkMode ? ThemeData.dark(): ThemeData.light(),
      home: myHomePage(),
     
    );
  }

Widget myHomePage() {
  
    return Scaffold(
        endDrawer: new Drawer(
          child: 
            ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
            Divider(height: 1.0,indent: 10.0,color: Colors.black,),
            SwitchListTile(
              title: const Text("Dark Mode"),
              value: darkMode,
              onChanged: (changedTheme) {
              setState(() {darkMode = changedTheme;});
             
              },
         
    )
          ],
        )    
          ),
        appBar: AppBar(

          title: new Center(child: new Text('Welcome', textAlign: TextAlign.center)),
          actions: <Widget>[      
          Builder(
          builder: (context) => IconButton(
                icon: new Icon(Icons.settings),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
              ),
        ),
        ],
        ),
        
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[   
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.book, size:100.0,),
              Text("Journal"),
              
            ],)      
            
        ],),
        floatingActionButton:journalButton(context) 
       
          
      );
  }
 Widget journalButton(BuildContext context){
   return FloatingActionButton(
	        child: Icon(Icons.add),
        	onPressed: (){journal(context);}
          
        );
 }
void journal(BuildContext context){
  //Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>new Journal()) );
  Navigator.pushNamed(context, Journal.routeName);
}
 }