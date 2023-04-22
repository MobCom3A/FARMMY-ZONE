import 'dart:html';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:midui/components/my_button.dart';
import 'package:midui/components/my_textfield.dart';
import 'package:midui/components/square_tile.dart';
import 'package:midui/ftype_page.dart';
import 'package:midui/city_page.dart';
import 'package:midui/login_page.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:stroke_text/stroke_text.dart';

class ReportPage extends StatelessWidget {
  ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade700,
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.yellow.shade700,
          boxShadow: [
            BoxShadow(
              color: Colors.green.shade900.withOpacity(.15),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor:Colors.yellow.shade700,
          ),
          child: Text(
            'SEND A REPORT',
            style: TextStyle(
                fontFamily: 'Breadcrumbs',
                fontSize: 30,
                color: Colors.white70,
            ),
          ),
          onPressed: (){

          },
        ),
      ),
      
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green[700],
        elevation: 0,
        title:StrokeText(
                text: "FARMMY ZONE",
                textStyle: TextStyle(
                  fontFamily: 'Breadcrumbs',
                  fontSize: 30,
                  color: Colors.yellow.shade700,
                ),
                strokeColor: Colors.green.shade900,
                strokeWidth: 6,
              ),

      ),
      drawer: Drawer(
        child: Container(
          color: Colors.green.shade600,        
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              const SizedBox(height: 50),
              //logo
              StrokeText(
                text: "FARMMY ZONE",
                textStyle: TextStyle(
                  fontFamily: 'Breadcrumbs',
                  fontSize: 35,
                  color: Colors.yellow[700],
                ),
                strokeColor: Colors.green.shade900,
                strokeWidth: 6,
              ),              
              const SizedBox(height: 10),
             
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.green.shade900),
                  image: DecorationImage(
                    image: AssetImage("lib/images/profile.jpg"),
                  )
                ),
              ),

              Text(
                "User Name",
                style:TextStyle(color:Colors.white,fontSize: 30),
              ),
              Text(
                "username@farmmy.zone",
                style:TextStyle(color:Colors.white,fontSize: 16),
              ),

              const SizedBox(height: 60), 
              MyButton(
                ButtonColor: Colors.yellow.shade700,
                ButtonTextColor: Colors.white70,
                ButtonText: '   PROFILE  ',
                onTap: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>FarmTypePage()));
                },
              ),
              const SizedBox(height: 20), 
              MyButton(
                ButtonColor: Colors.yellow.shade700,
                ButtonTextColor: Colors.white70,
                ButtonText: '      CITY      ',
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CityPage()));
                },
              ),

                            const SizedBox(height: 20), 
              MyButton(
                ButtonColor: Colors.yellow.shade700,
                ButtonTextColor: Colors.white70,
                ButtonText: 'FARM TYPE',
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FarmTypePage()));
                },
              ),

                            const SizedBox(height: 20), 
              MyButton(
                ButtonColor: Colors.red.shade700,
                ButtonTextColor: Colors.white,
                ButtonText: '   LOGOUT   ',
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                },
              ),
              




            ],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/grass.jpg"),
            fit: BoxFit.cover,
            opacity: 0.9,
          ),
        ),
        child: SingleChildScrollView(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 25),

              Container(
                
                
                height: 300,
                width:325,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                   color: Colors.green.shade900.withOpacity(0.5),
                ),
                

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20,),

                    StrokeText(
                      text: "INFESTATION RATE",
                      textStyle: TextStyle(
                        fontFamily: 'Breadcrumbs',
                        fontSize: 25,
                        color: Colors.yellow[700],
                      ),
                      strokeColor: Colors.green.shade900,
                      strokeWidth: 6,
                    ),

                    const SizedBox(height: 20,),

                    Center(
                      child: Column(
                        children: [
                          CircularPercentIndicator(
                            animation: true,
                            animationDuration: 1000,
                            radius:200,
                            lineWidth: 30,
                            percent: 0.53,
                            progressColor: Colors.orange.shade700,
                            backgroundColor: Colors.orange.shade200,
                            circularStrokeCap: CircularStrokeCap.round,
                            center: const Text('53.4%', style:TextStyle(fontSize:30, color: Colors.white70)),
                          ),

                        ],
                      ),
                    ),







                   ],
                ),

              ),


              const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.all(25),
                height: 500,
                width:325,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                   color: Colors.green.shade900.withOpacity(0.5),
                ),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  const SizedBox(height: 20,),
                  StrokeText(
                    text: "DETAILED REPORT",
                    textStyle: TextStyle(
                      fontFamily: 'Breadcrumbs',
                      fontSize: 25,
                      color: Colors.yellow[700],
                    ),
                    strokeColor: Colors.green.shade900,
                    strokeWidth: 6,
                  ),  

                    Container(
                      margin: EdgeInsets.all(25),
                      child: Column(
                        children: [

                          LinearPercentIndicator(
                            animation: true,
                            animationDuration: 1000,
                            lineHeight: 30,
                            percent: 0.67,
                            progressColor: Colors.orange.shade700,
                            backgroundColor: Colors.orange.shade200,
                            center: const Text('67%', style:TextStyle(fontSize:20, color: Colors.black38)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'FARM 1 reported by USER',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'DATE/TIME',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 10),
                          LinearPercentIndicator(
                            animation: true,
                            animationDuration: 1000,
                            lineHeight: 30,
                            percent: 0.35,
                            progressColor: Colors.yellow.shade700,
                            backgroundColor: Colors.yellow.shade200,
                            center: const Text('35%', style:TextStyle(fontSize:20, color: Colors.black38)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'FARM 2 reported by USER',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'DATE/TIME',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),




                          const SizedBox(height: 10),
                          LinearPercentIndicator(
                            animation: true,
                            animationDuration: 1000,
                            lineHeight: 30,
                            percent: 0.88,
                            progressColor: Colors.red.shade700,
                            backgroundColor: Colors.red.shade200,
                            center: const Text('88%', style:TextStyle(fontSize:20, color: Colors.black38)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'FARM 3 reported by USER',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'DATE/TIME',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),





                          const SizedBox(height: 10),
                          LinearPercentIndicator(
                            animation: true,
                            animationDuration: 1000,
                            lineHeight: 30,
                            percent: 0.22,
                            progressColor: Colors.green.shade900,
                            backgroundColor: Colors.green.shade200,
                            center: const Text('22%', style:TextStyle(fontSize:20, color: Colors.black38)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'FARM 4 reported by USER',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'DATE/TIME',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),


                          const SizedBox(height: 10),
                          LinearPercentIndicator(
                            animation: true,
                            animationDuration: 1000,
                            lineHeight: 30,
                            percent: 0.55,
                            progressColor: Colors.orange.shade900,
                            backgroundColor: Colors.orange.shade200,
                            center: const Text('55%', style:TextStyle(fontSize:20, color: Colors.black38)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'FARM 5 reported by USER',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'DATE/TIME',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),






                        ],
                      ),
                    ),










                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),



      ),
    );
  }
}
