// Coding for home page will be done in this file.
import 'package:bmi_calclulator/result_page.dart';

import 'enum_file.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedCard = Gender.male;
  int sliderValue = 180; // declaring a varible that holds the value of height
  int weight = 50;
  int age = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // scafflod means => it return a white black container,it returns what to show in the input page
      appBar: AppBar(
        //  this is the app bar of (similar to nav bar in web)
        title: Text('BMI CALCULATOR'), // Here is what to write in the  app bar
        centerTitle: true, //  It is same as text allign center
        backgroundColor: Colors.pinkAccent,
      ),
      
      body: Column(
        children: [
          // first children contains a row and in this row, we have two more children
          Expanded(
            // , it should be directly inside of a column or row, we need to expend the size of row, so we are using expend widget
            child: Row(
              // ================== first row==============
              children: [
                // ------------First chile
                // ---------------- CONTAINER 1-----------
                Expanded(
                  //In the same way we are expending the containers to increase their length
                  child: Container(
                    //container 1

                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCard = Gender.male;
                        });
                      },
                      child: Column(
                        // icon and text
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            color: Colors.white,
                            size: 95,
                          ),
                          SizedBox(
                            // Provides the space in between icon and text
                            height: 10,
                          ),
                          Text('MALE',
                              style: TextStyle(
                                fontSize: 21,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        // attribute for box decoration
                        borderRadius:BorderRadius.circular(40), // border radius
                            color:selectedCard == Gender.male
                            ? Colors.lightBlueAccent //selected
                            : Colors.blue // defalut
                          
                            ),
                           
                              ),
                ),

                // -------------------CONTAINER 2 ---------
                Expanded(
                  //In the same way we are expending the containers to increase their length
                  child: Container(
                      //container 2
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedCard = Gender.female;
                        });
                        },
        
                        child: Column(// icon and text
                          // icon and text
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.venus,
                              color: Colors.white,
                              size: 95,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('FEMALE',
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          // attribute for box decoration
                          borderRadius:
                              BorderRadius.circular(40), // border radius
                          color:selectedCard == Gender.female
                            ? Colors.lightBlueAccent //selected
                            : Colors.blue //defaut
                      ),
                ),
                ),
              ], // children are nothing more than the number of rows present in our home page( rows can contain single or multiple cards)
            ),
          ),

        // #################################### RAW 2 ##############################

          // first children contains a row and in this row, we have two more children
          Expanded(
            // , it should be directly inside of a column or row, we need to expend the size of row, so we are using expend widget
            child: Row( // it will fill the entire raw
              children: [
                Expanded(
                  //In the same way we are expending the containers to increase their length
                  child: Container(
                    child: Column( // for height in cloumn
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Height',
                           style: TextStyle(
                           fontSize:20,
                            color: Colors.white),),

                        Row( // for 180cm in raw
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.ideographic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                               sliderValue.toString(),
                               style: TextStyle(
                                  fontSize: 60,
                                  color: Colors.white,
                                )
                            ),
                            Text('cm',
                               style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                )
                            ),
                          ],
                        ),   
                      
                       Slider(
                              value: sliderValue.toDouble(),
                              min: 120.0,
                              max: 225.0,
                              activeColor: Colors.white, // changes the color of slider 
                              inactiveColor: Colors.blueGrey,
                              onChanged: (value){ // value is a variable which holds the value of slider, and is visible only in onchanged
                              // so it cant be excessed by text = 180, so we need to use value instead of cm
                                  setState(() {
                                     sliderValue = value.toInt();
                                  });
                                 
                              },
                            ) 
                      ],
                    ), 
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration( // attribute for box decoration
                        borderRadius:BorderRadius.circular(40), // border radius
                            color:Colors.blue                           
                          
                    ),
                  ),
                ),
              ], // children are nothing more than the number of rows present in our home page( rows can contain single or multiple cards)
            ),
          ),








          // ==================== Raw 3 ===================
          Expanded(
            // , it should be directly inside of a column or row, we need to expend the size of row, so we are using expend widget
            child: Row(
              // =================
              children: [
                // ------------First chilD
                // ---------------- CONTAINER 1-----------
                Expanded(
                  // , it should be directly inside of a column or row, we need to expend the size of row, so we are using expend widget
                  child: Row(// both child are in a row
                    // ================== first row==============
                    children: [ // Forst child

                      // ---------------- CONTAINER 1-----------
                      Expanded(
                        //In the same way we are expending the containers to increase their length
                        child: Container(//container 1
                          
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  'Weight',
                                  style: TextStyle(
                                  fontSize:20,
                                  color: Colors.white),
                              ),

                              Text(
                                '$weight',
                                 style: TextStyle(
                                  fontSize:50,
                                  color: Colors.white),
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                     onTap: () {
                                       setState(() {
                                         weight++;
                                       });
                                       
                                     },
                                     child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 30,
                                        child: Icon(FontAwesomeIcons.plus, color: Colors.pinkAccent,),
                                    ),
                                  ),

                                  GestureDetector(
                                    onTap: () {
                                       setState(() {
                                         weight--;
                                       });
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 30,
                                      child: Icon(FontAwesomeIcons.minus, color: Colors.pinkAccent,),
                                    ),
                                  )  
                                ],
                              )
                            ],
                          ),
                          
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              // attribute for box decoration
                              borderRadius:
                                  BorderRadius.circular(40), // border radius
                              color: Colors.pinkAccent),
                        ),
                      ),



                      // -------------------CONTAINER 2 ---------
                      Expanded(
                        //In the same way we are expending the containers to increase their length
                        child: Container(//container 2
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text( 
                                  'Age',
                                  style: TextStyle(
                                  fontSize:20,
                                  color: Colors.white),
                              ),

                              Text(
                                '$age',
                                 style: TextStyle(
                                  fontSize:50,
                                  color: Colors.white),
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                         age++;                             
                                      });
                                   
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 30,
                                      child: Icon(FontAwesomeIcons.plus, color: Colors.pinkAccent,),
                                    ),
                                  ),
                                   
                                  GestureDetector(
                                    onTap: () {
                                       setState(() {
                                         age--;
                                       });
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 30,
                                      child: Icon(FontAwesomeIcons.minus, color: Colors.pinkAccent,),
                                    ),
                                  )  
                                ],
                              )
                            ],
                          ),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                // attribute for box decoration
                                borderRadius:
                                    BorderRadius.circular(40), // border radius
                                color: Colors.pinkAccent)
                        ),
                      ),
                    ], // children are nothing more than the number of rows present in our home page( rows can contain single or multiple cards)
                  ),
                ),
              ], // children are nothing more than the number of rows present in our home page( rows can contain single or multiple cards)
            ),
          ),


          // ================== Footer starts ==================
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>ResultPage(
                    height: sliderValue,
                    weight: weight,
                    age: age
                  ),
                ),
              );
            },
            child: Container(
              color: Colors.blue,
              height: 60,
              // borderRadius: BorderRadius.circular(30),
              width: double.infinity, // It fills the entire screen
              
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


