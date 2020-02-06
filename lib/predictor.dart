import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';
import 'dart:math' show Random;

class Predictor extends StatefulWidget {
  Pre createState() => Pre();
}
class Pre extends State<Predictor>{

void reload(){
  setState((){
  });
}

  
  @override
  Widget build(BuildContext context) {
    
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Padding(
            padding: EdgeInsets.all(30),
            child: Text('Call Me... Maybe?',style: Theme.of(context).textTheme.display1)
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: new GestureDetector(
              child: Text('Ask a question... tap for the answer.',style: Theme.of(context).textTheme.title),
              onTap: () =>  reload()
          )),
          random(context)
         
          
      ]);
  }
}
Widget random(BuildContext context){
  var randomList = List(100);
  randomList[0]="Unlikely but possible.";
  randomList[1]="Maybe Indeed.";
  randomList[2]="Yes, It is ture";
  randomList[3]="Yes, Defintely";
  randomList[4]="It is right";
  randomList[5]="The future is uncertain";
  randomList[6]="No, that is wrong";
  randomList[7]="Well done.";
  return Padding(
    padding: EdgeInsets.all(10),
    child: Text(randomList[randomBetween(0,7)],style: Theme.of(context).textTheme.display1)
    //child: Text('Unlikely but possible.',style: Theme.of(context).textTheme.display1)
  );
}