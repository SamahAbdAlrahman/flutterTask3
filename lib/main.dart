import "package:flutter/material.dart";

void main(){
  runApp(app());
}
class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,

      home: Scaffold(
        // backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          leading: Icon(Icons.menu , color: Colors.black),
          title: Text('Samah Abdalrahman' , 
          style :TextStyle(color: Colors.white ,
          fontWeight:FontWeight.w700,) ,),
          centerTitle: true,
          actions: [
            Icon(Icons.search  , color: Colors.white),

            Icon(Icons.notification_add  , color: Colors.white),

          ],
        ),
        body: myBody(),
      ),
    );
  }
}
class myBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Hello! I am developer ', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900,color:Colors.teal)),

          SizedBox(height: 15),
         Text('Samah Abdalrahman', style: TextStyle(fontSize: 26 , color:Colors.teal ,fontWeight:FontWeight.w700,)),
     
         Row(
                  mainAxisAlignment: MainAxisAlignment.center,

          children: [
            
            Icon(Icons.phone, color: Colors.teal,),
            SizedBox(width: 10),
            Text('0591234567', style: TextStyle(fontSize: 26 , color: Colors.teal,fontWeight:FontWeight.w700 )),
          ],
         ),
         
        ],
      ),
    );
    

  }

}