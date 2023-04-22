import 'dart:html';
import 'package:flutter/material.dart';
import 'package:midui/components/my_button.dart';
import 'package:midui/components/my_textfield.dart';
import 'package:midui/components/square_tile.dart';
import 'package:midui/reports.dart';
import 'package:midui/city_page.dart';
import 'package:midui/login_page.dart';
import 'package:stroke_text/stroke_text.dart';

class FarmTypePage extends StatelessWidget {
  FarmTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/FarmP.jpg"),
            fit: BoxFit.cover,
            opacity: 0.9,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [

              const SizedBox(height: 70),
              //logo
              StrokeText(
                text: "FARMMY",
                textStyle: TextStyle(
                  fontFamily: 'Breadcrumbs',
                  fontSize: 60,
                  color: Colors.yellow[700],
                ),
                strokeColor: Colors.green.shade900,
                strokeWidth: 12,
              ),
              StrokeText(
                text: "ZONE",
                textStyle: TextStyle(
                  fontFamily: 'Breadcrumbs',
                  fontSize: 60,
                  color: Colors.yellow[700],
                ),
                strokeColor: Colors.green.shade900,
                strokeWidth: 12,
              ),
              const SizedBox(height: 100),
             
              
              MyButton(
                ButtonColor: Colors.green.shade900,
                ButtonTextColor: Colors.white,
                ButtonText: ' RICE FARMS ',
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportPage()));
                },
              ),
              const SizedBox(height: 20),              
              

              MyButton(
                ButtonColor: Colors.green.shade900,
                ButtonTextColor: Colors.white,
                ButtonText: 'CORN FARMS',
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportPage()));
                },
              ),
              const SizedBox(height: 20), 
              MyButton(
                ButtonColor: Colors.red.shade500,
                ButtonTextColor: Colors.white,
                ButtonText: '       BACK       ',
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CityPage()));
                },
              ),
              

            ],
          ),
        ),
      )
    );
  }
}
