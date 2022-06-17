import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static const String routName = '/second';
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
    double msg = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:AppBar(title: const Text(('VIEW DEAILS'),style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold)),
      backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('BMI', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amberAccent),),
                  Text('CATEGORY', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amberAccent),),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
              color: msg<16? Colors.amberAccent : Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Under weight(ST)', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                  Text('<16', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
              color: msg>16 && msg<16.9? Colors.amberAccent : Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Under weight(MT)', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                  Text('16<BMI<16.9', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
              color: msg>17 && msg<18.4? Colors.amberAccent : Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Under weight(MiT)', style:  TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                  Text('17<BMI<18.4', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                ],
              ),
            ),


            Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
              color: msg>18.5 && msg<24.9? Colors.amberAccent : Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Normal', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                  Text('18.5<BMI<24.9', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
              color: msg>25 && msg<29.9? Colors.amberAccent : Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Over Weight(PO)', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                  Text('25<BMI<29.9', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
              color: msg>30 && msg<34.9? Colors.amberAccent : Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Over Weight(Class 1)', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                  Text('30<BMI<34.9', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
              color: msg > 35 && msg < 39.9? Colors.amberAccent : Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Over Weight(Class 2)', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                  Text('35<BMI<39.9', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
              color: msg>40? Colors.amberAccent : Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Over Weight(Class 3)', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                  Text('40<BMI', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                ],
              ),
            ),

            SizedBox(height:15,),
            Text('Message: ', style: TextStyle(fontSize: 20, color: Colors.amberAccent, fontWeight: FontWeight.bold, ),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('${getInterpretation()}', style: TextStyle(fontSize: 15, color: Colors.blue, fontWeight: FontWeight.bold, ),),
            )
          ],

        )
      ),
    );
  }
  @override
  void initState(){
    print('initState');

    super.initState();
  }


    @override
  void didChangeDependencies() {
      print('didchange callded');
      msg = ModalRoute.of(context)!.settings.arguments as double;
      print(msg);
    super.didChangeDependencies();
  }

    String getInterpretation() {
      if (msg >= 25) {
        return 'You have a higher than normal body weight. Try to exercise more.';
      } else if (msg >= 18.5) {
        return 'You have a normal body weight. Good job!';
      } else {
        return 'You have a lower than normal body weight. You can eat a bit more.';
      }
    }
}
