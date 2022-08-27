import 'package:flutter/material.dart';
import 'package:project_a/Sign%20Up.dart';
import 'Sign In.dart';
import 'Forgot_Password.dart';


void main() {
  runApp(MaterialApp(home: MyApp(),
    routes: {
    '0':(context)=>Sign_In(),
      '1':(context)=>MyApp(),
      '2':(context)=>Sign_Up(),
      '3':(context)=>Forgot_Password()

    }));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
            children: <Widget>[
              Container(
              // height: 200,
                          // width: double.infinity,

                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('image/unyStW.webp'),
                          fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(Colors.black12,
                            BlendMode.darken)
                      )
                  )
              ),
              Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 50),

            child:ClipRRect(
              borderRadius:BorderRadius.circular(40),
           child: Image.asset('image/JDB2JGEUIBG27ITHDCQLBACG4Y.jpg',height: 340,width: 330,fit: BoxFit.cover,alignment: Alignment.center),
    ),
    ),
                 Container(
                     margin: EdgeInsets.symmetric(vertical: 20),
                   width: size.width*0.8,
                 child:ClipRRect(
                   borderRadius: BorderRadius.circular(29),
                 child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                    color: Colors.deepOrange,
                    onPressed: (){Navigator.pushNamed(context, '0');}, child:Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 19),)),)),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
                width: size.width*0.8,
                child:ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child: FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                      color: Colors.orange[200],
                      onPressed: (){Navigator.pushNamed(context, '2');}, child:Text('Sign Up',style: TextStyle(color: Colors.black,fontSize: 19),)),)),

            ]
        )
            ]
    )

    );
  }
}