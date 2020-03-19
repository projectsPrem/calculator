import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{

  @override
  HomePageState createState()=>HomePageState();
}

class HomePageState extends State<HomePage>{
var num1=0,num2=0,sum=0;
TextEditingController t1= new TextEditingController(text: "");
TextEditingController t2= new TextEditingController(text: "");

void do_addition(){
  setState((){
    num1=int.parse(t1.text);
    num2=int.parse(t2.text);
    sum=num1+num2;
  });
}



void do_subtraction(){
  setState((){
    num1=int.parse(t1.text);
    num2=int.parse(t2.text);
    sum=num1-num2;
  });
}


void do_multiply(){
  setState((){
    num1=int.parse(t1.text);
    num2=int.parse(t2.text);
  sum=num1*num2;
  });
}

void do_division(){
  setState((){
    num1=int.parse(t1.text);
    num2=int.parse(t2.text);
    sum=(num1 / num2).trunca te().toInt();
  });
}



  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: new Text("Calculator"),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: new Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           new  Text("Ouput :   $sum",style: TextStyle(fontSize: 24.0,),),

            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter the number 1",
                focusColor: Colors.deepPurpleAccent
              ),
              controller: t1,
            ),

            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter the number 2",
              ),
              controller: t2,
            ),

            new Padding(padding: EdgeInsets.all(20.0)),


            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                new MaterialButton(child: new Text("+"),onPressed: do_addition,color: Colors.deepPurpleAccent,),

                new MaterialButton(child:new Text("-"),onPressed: do_subtraction,color: Colors.deepPurpleAccent,),

              ],
            ),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                new MaterialButton(child: new Text("*"),onPressed: do_multiply,color: Colors.deepPurpleAccent,),

                new MaterialButton(child:new Text("/"),onPressed: do_division,color: Colors.deepPurpleAccent,),

              ],
            )
          ],
        )
      ),
    );
  }
}
