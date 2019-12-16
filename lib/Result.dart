import 'package:flutter/material.dart';



import 'main.dart';


class Result extends StatelessWidget {


final double bmi;
String comment='';
String headline='';
Result(this.bmi,{Key key}):super(key:key);


bmiResult(double c){



  if(bmi<18.5){

    comment = "You are under Weight";
    headline = "UNDERWEIGHT";
  }else if(bmi >= 18.5 && bmi <25){
    comment = "You are at a healthy weight.";
    headline = "NORMAL";
  }else if(bmi > 25 && bmi <= 29.99){
    comment = "You are at overweight.";
    headline = "OVERWEIGHT";
  }else{
    comment = "You are obese.";
    headline = "OBESE";
  }

  return bmi.round();
}





  @override
  Widget build(BuildContext context) {
   int r=bmiResult(bmi);



    return Scaffold(


      appBar: AppBar(title: Text('Your Result'),),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Card(
          color: Color(0xFF212f3c),
          elevation: 15,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(headline,style: Theme.of(context).textTheme.title,),
                Text(r.toString(),style: Theme.of(context).textTheme.display1.copyWith(
                  fontSize: 125,
                  color: Colors.amber
                ),),
                Text('Healthy BMI range:\n\18.5  -  24.9 kg/m^2',style: Theme.of(context).textTheme.subtitle.copyWith(
                  fontWeight: FontWeight.w200,
                  fontSize: 18
                ),),
                Text(comment,style: Theme.of(context).textTheme.subhead,),
            FlatButton(
              color:Colors.amber[700],

              onPressed: () {

                Navigator.pop(context,MaterialPageRoute(builder: (context)=>Home()));
                },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 16),
                child: Text('RE-CALCULATE',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),),
              ))





              ],



            ),
          ),



        ),
      ),
    );
  }
}
