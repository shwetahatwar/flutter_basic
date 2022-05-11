import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/menu_bottom.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({ Key? key }) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  final TextEditingController textHeight = TextEditingController();
  final TextEditingController textWeight = TextEditingController();

  final double fontSize = 18;
  String result = '';
  bool isImperial = false;
  bool isMetric = true;
  double? height;
  double? weight;
  String heightMessege = '';
  String weightMessege = '';

  late List<bool> isSelected;

  @override
  void initState() {
    isSelected = [isImperial,isMetric];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    heightMessege = 'Please enter height in' + ((isMetric) ?  'meters' : 'inches');
    weightMessege = 'Please enter weight in' + ((isMetric) ?  'kilos' : 'pounds');

    return Scaffold(
      appBar: AppBar(title: Text('BMI calculator')),
      bottomNavigationBar: MenuBottom(),
      body: Column(children: [
        ToggleButtons(children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text('Metric',style: TextStyle(fontSize: fontSize)),),
          Padding(padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text('Imperial',style: TextStyle(fontSize: fontSize)),)
        ],
        isSelected: isSelected,
        onPressed: toggleMeasure,),
        TextField(controller: textHeight, keyboardType: TextInputType.number,
        decoration: InputDecoration(hintText: heightMessege ),),
        TextField(controller: textWeight, keyboardType: TextInputType.number,
         decoration: InputDecoration(hintText: weightMessege ),),

         ElevatedButton( 
           child: Text('Calculate BMI',
         style: TextStyle(
           fontSize: fontSize),),onPressed: (){},),
           Text(result,
           style: TextStyle(
             fontSize: fontSize
           ) )
      ],)
      
    );
  }

  void toggleMeasure(value){
        if(value == 0){
          isMetric = true;
          isImperial = false;
        }else{
          isMetric = false;
          isImperial = true;
        }
        setState(() {
          isSelected = [isImperial,isMetric];
        });
      }

      void BMI(){
        double bmi = 0;
        
      }
}