import "package:flutter/material.dart";
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

