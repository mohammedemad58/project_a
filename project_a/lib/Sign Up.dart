import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);
  @override
  State<Sign_Up> createState() => _Sign_UpState();
}
class _Sign_UpState extends State<Sign_Up> {
  //final Widget child;
  DateTime date1=DateTime.now();
  Future<Null>selectDate(BuildContext context) async{
    final DateTime? picked=await showDatePicker(
      context: context, initialDate: date1, firstDate: DateTime(1960), lastDate: DateTime(2030),);
    if(picked!=null && picked!= date1){
      setState((){
        date1=picked;
        print(date1.toString());});}}
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        home: Scaffold(
            body:
            Padding(
                padding: EdgeInsets.all(20),
                child: ListView(
                  children: <Widget>[
                    IconButton(onPressed: (){Navigator.pushNamed(context, '1');}, icon:Icon(Icons.arrow_back_ios),alignment: Alignment.topLeft,),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                              fontSize: 38),
                        )),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0,2)
                            ),]),
                      padding: EdgeInsets.all(1),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Full Name',
                            prefixIcon:Icon(Icons.account_circle_rounded)
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0,2)
                            ),]),
                      padding: EdgeInsets.all(1),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Username',
                            prefixIcon:Icon(Icons.person)
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0,2)
                            ),]),
                      padding: EdgeInsets.all(1),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Email',
                            prefixIcon:Icon(Icons.alternate_email_outlined)
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0,2)
                            ),]),
                      padding: EdgeInsets.all(1),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Mobile Number',
                            prefixIcon:Icon(Icons.phone)
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0,2)
                            ),]),
                      padding: EdgeInsets.all(1),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'New Password',
                            prefixIcon:Icon(Icons.password)
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0,2),
                            ),]),
                      padding: EdgeInsets.all(1),
                      child:Row(
                        children: [
                          Text('  Date of Birth:  ',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 15)),
                          IconButton(onPressed: (){selectDate(context);}, icon: Icon(Icons.date_range,color: Colors.deepOrange,)),
                          Text(('${date1.year} - ${date1.month} - ${date1.day}').toString(),style: TextStyle(color: Colors.black87),)
                        ],
                      ),

                    ),


                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Select your Gender:",style: TextStyle(color: Colors.deepOrange,fontSize: 16,fontWeight: FontWeight.bold)),
                        RadioButtonGroup(activeColor: Colors.deepOrange,
                          labels:<String>["Male","Female"],
                          onSelected: (String selected)=>
                              print(selected),
                        )
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        width: size.width*0.9,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: FlatButton(
                              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                              color: Colors.deepOrange,
                              onPressed: (){}, child:Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 19),)),)),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '0');
                      },
                      child: const Text('Already have an account?',style: TextStyle(color: Colors.deepOrange,fontSize: 16)),
                    ),
                  ],
                ))
        )


    );




  }





}

