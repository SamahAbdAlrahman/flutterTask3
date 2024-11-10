import "package:flutter/material.dart";
import 'dart:math';
import 'package:flutter/material.dart';
void main(){
  // runApp(X());
  runApp(
MainAppRun(),
    );
  
    
}


class MainAppRun extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: Scaffold(
  appBar: AppBar(
    title: Text('Home page',style: TextStyle(color: Colors.deepOrange,fontSize: 30),),
    centerTitle: true,

  ),
  body: CounterWidget(),

),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter =0;
  @override
  Widget build(BuildContext context) {
    return Center(  
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        ElevatedButton(
              onPressed: (){
                  setState(() {
                  counter++;
                  });
                },
                     child: Text("Counter",style: TextStyle(fontSize: 24,color: Colors.deepOrange)),
               
            ),

       Text("Counter : $counter", style: TextStyle(fontSize: 24 )),

             ],
            ),
 
    );  
  }
}



class samah extends StatelessWidget{
  @override
Widget build(BuildContext context) {
  return Center(
child: Text('df'),
    );
}
 }



 class engsamah extends StatefulWidget{
  @override
  engsamah_state createState() => engsamah_state();
  
 }
 class engsamah_state extends State <engsamah>{
    @override
Widget build(BuildContext context) {
  return Center(
child: Text('df'),
    );
}
 }
















class C extends StatefulWidget{
  @override
  C_state createState() => C_state();
}
class C_state extends State <C>{
  @override
  Widget build(BuildContext context){
    return Text('df');
  }
}
























 ''
