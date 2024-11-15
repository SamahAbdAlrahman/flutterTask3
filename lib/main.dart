import 'package:flutter/material.dart';
void main() {
  runApp(app());
}
class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
   appBar:  AppBar(
    leading: Icon(Icons.keyboard_arrow_left , color: Colors.white,),
    backgroundColor: Colors.lightBlue,  
    title: Text('Login !' , style: TextStyle(color: Colors.white , fontSize: 23,fontWeight:FontWeight.w500),),
    centerTitle: true,
    actions: [
      Icon(Icons.account_circle, color: Colors.white,),
            SizedBox(width: 15,),
    ],
   ),
  body: MyBody(),
  )
);
  }
}
class MyBody extends StatefulWidget{
  @override
  _MyBodyState createState() => _MyBodyState();
  
}

class _MyBodyState extends State <MyBody>{
String msg='';
        void login(String email, String password){
String valid_email='tariq@gmail.com';
String valid_password='112233';



       setState(() {
      if (email.isEmpty || password.isEmpty) {
        msg ='email and passwoed can’t be empty';
      } else if (email != valid_email || password != valid_password) {
        msg ='unvalid email or password';
      } else {
        msg = 'welcome to the home page';
      }
    });
  }
    TextEditingController emailController= new TextEditingController();
TextEditingController passwoedController= new TextEditingController();

@override
  Widget build(BuildContext context) {

    return Center(
child: Container(
  width: 300,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    // SizedBox(height: 50,),

    TextField(
               cursorColor:Colors.blue,

      controller: emailController,
      decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: TextStyle(color: Colors.lightBlue , fontSize: 20,fontWeight:FontWeight.w500),
        hintText: 'Write your email ...',
        hintStyle: TextStyle(color: Colors.redAccent , fontSize:12, fontWeight:FontWeight.w400),
        border: OutlineInputBorder(),
      ),
    ),
    SizedBox(height: 15,),
    TextField(
         cursorColor:Colors.blue,
      controller: passwoedController,
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(color: Colors.lightBlue , fontSize: 20,fontWeight:FontWeight.w500),
        hintText: 'Write your password ...',
        hintStyle: TextStyle(color: Colors.redAccent , fontSize:12, fontWeight:FontWeight.w400),
        border: OutlineInputBorder(),
      ),
    ),
        SizedBox(height: 20,),

    ElevatedButton(
    onPressed: () {
      login(emailController.text, passwoedController.text);
       },
    child: Text('Login',style: TextStyle(color: Colors.lightBlue , fontSize: 20,fontWeight:FontWeight.w500),),),
    SizedBox(height: 20,),
    Text(msg,
    style: TextStyle(
      color: Colors.redAccent ,
      fontSize: 18,
      fontWeight:FontWeight.w500),
    ),
 
    
    ],
  ),
),    );
  }

}