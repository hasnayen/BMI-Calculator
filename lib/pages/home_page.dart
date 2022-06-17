import 'package:flutter/material.dart';
import 'package:flutter_navigation_batch05/pages/second_page.dart';

class HomePage  extends StatefulWidget {
  static const String routName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _State();
}

class _State extends State<HomePage> {
  double sliderValue = 50.00;
  double sliderValue2 = 1.5;
   double bmi = 22.22 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    appBar: AppBar(title: Center(child: const Text(('BMI CALCULATOR'), style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),)),
    backgroundColor: Colors.amberAccent,
    ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Column(
                children: [
                  Text('WEIGHT(Kg)' ,style: TextStyle(fontSize: 20, color: Colors.blueAccent, fontWeight: FontWeight.bold, backgroundColor: Colors.amberAccent),),
                  Slider(
                    min: 0,
                    max: 100,
                    divisions:100 ,
                    label: sliderValue.round().toString(),
                    value: sliderValue,
                    onChanged: (value){
                              setState((){
                                sliderValue = value;
                                calculation(sliderValue,sliderValue2);
                    });
                    }),
                  Text('${sliderValue.round()}',style: TextStyle(fontSize: 40,color: Colors.amberAccent),),
                  SizedBox(height: 20,),
                  Text('HEIGHT(m)', style: TextStyle(fontSize: 20,color: Colors.blueAccent , fontWeight: FontWeight.bold, backgroundColor: Colors.amberAccent),),
                  Slider(
                      min: 1.2,
                      max: 2.2,
                      divisions:100,
                      label: sliderValue2.toStringAsFixed(2),
                      value: sliderValue2,
                      onChanged: (value){
                        setState((){
                          sliderValue2 = value;
                          calculation(sliderValue,sliderValue2);
                        });
                      }),
                  Text('${sliderValue2.toStringAsFixed(2)}',style: TextStyle(fontSize: 40, color: Colors.amberAccent),),
                  SizedBox(height: 20,),
                  Container(
                    height:150 ,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blueAccent
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Text('${bmi.toStringAsFixed(2)}', style: TextStyle(color: Colors.amberAccent, fontSize: 50, fontWeight: FontWeight.bold),)),
                  ),

                ],
              ),
              SizedBox(height: 20,),
              Text('${getResult()}',style: TextStyle(color: Colors.amberAccent),),
              SizedBox(height: 15,),


        ElevatedButton.icon(

          label: const Text('VIEW DETAILS', style: TextStyle(fontWeight: FontWeight.bold),),
          icon: Icon(Icons.arrow_right),

          onPressed: (){
            Navigator.pushNamed(context, SecondPage.routName, arguments: bmi);
          }, style: ElevatedButton.styleFrom(
          minimumSize: Size(60, 40),

        ),

        ),

            ],
          ),
        ),
      ),

    );
  }

  void calculation(double sliderValue, double sliderValue2) {
    bmi = sliderValue / (sliderValue2 * sliderValue2);
  }
  String getResult() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }


}
