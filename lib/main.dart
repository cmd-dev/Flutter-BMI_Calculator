import 'package:flutter/material.dart';
import 'dart:math';


import 'Result.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,


    theme: ThemeData(
      accentTextTheme:TextTheme(body2: TextStyle(fontFamily:'Montserrat-Regular',fontSize: 12,color: Colors.red)) ,
      brightness: Brightness.dark,
        primaryColor: Colors.black,
        primaryColorDark: Colors.blueGrey[900],
        primaryColorLight: Colors.grey,
        buttonColor: Colors.amber[700],
        textTheme: TextTheme(

          body1: TextStyle(
              fontFamily: 'Montserrat-Regular',
              color: Colors.white,
              fontSize: 16),
        ),
      cardColor: Color(0xFF212f3c),


    ),

    home: Home()));

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int age = 18;
  double height = 175;
  int weight = 60;
  bool male = true;
  List<String> bmi_range = [];



  double bmi(){

    double c=weight/pow((height/100),2);
    return c;


  }












  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text('BMI'),
            elevation: 0,
          ),
          body: Align(
            alignment: Alignment(0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      highlightColor: Colors.green,
                      onTap: () {
                        setState(() {
                          male = true;
                        });
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        color: male ? Colors.green : Color(0xFF212f3c),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 185,
                            ),
                            Container(
                              child: Image.asset(
                                'images/male.png',
                              ),
                              height: 100,
                              width: 100,
                            ),
                            Container(
                              height: 35,
                            ),
                            Text('MALE'),
                            Container(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      highlightColor: Colors.green,
                      onTap: () {
                        setState(() {
                          male = false;
                        });
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        color: !male ? Colors.green : Color(0xFF212f3c),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 185,
                            ),
                            Container(
                                child: Image.asset('images/female.png'),
                                height: 100,
                                width: 100),
                            Container(
                              height: 35,
                            ),
                            Text('FEMALE'),
                            Container(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 10,
                ),
                Expanded(
                  child: Card(
                    color: Color(0xFF212f3c),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          ' HEIGHT',
                        ),
                        Text(
                            (height+0.5).toString().substring(0,3),
                          style: TextStyle(fontSize: 75),
                        ),
                        Slider(
                          divisions: 214,
                          activeColor: Colors.amberAccent,
                          inactiveColor: Colors.black87,
                          value: height,
                          onChanged: (double val) {
                            setState(() {
                              height = ((val*10).roundToDouble())/10;
                            });
                          },
                          min: 121,
                          max: 228,
                          label: height.toString(),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 220,
                      width: 190,
                      child: Card(
                        color: Color(0xFF212f3c),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'WEIGHT',
                                style: TextStyle().copyWith(fontSize: 16),
                              ),
                            ),
                            Text(
                              weight.toString(),
                              style: TextStyle(fontSize: 65),
                            ),
                            ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                  iconSize: 33,
                                  icon: Icon(
                                    Icons.remove_circle,
                                    color: Colors.amberAccent,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                IconButton(
                                  iconSize: 33,
                                  icon: Icon(
                                    Icons.add_circle,
                                    color: Colors.amberAccent,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 220,
                      width: 190,
                      child: Card(
                        color: Color(0xFF212f3c),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'AGE',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Text(
                              age.toString(),
                              style: TextStyle(fontSize: 65),
                            ),
                            Center(
                              child: ButtonBar(
                                alignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                    iconSize: 33,
                                    icon: Icon(
                                      Icons.remove_circle,
                                      color: Colors.amberAccent,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                  ),
                                  IconButton(
                                    iconSize: 33,
                                    icon: Icon(
                                      Icons.add_circle,
                                      color: Colors.amberAccent,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          bottomNavigationBar: FlatButton(
            color:Colors.amber[700],
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Result(bmi())));
              },
              child: Text('CALCULATE BMI',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w400),)),
        );
  }
}
