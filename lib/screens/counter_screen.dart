import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
   int contador = 10;
  @override
  Widget build(BuildContext context) {
    const TamanoDeLaLetra =  TextStyle(fontSize: 30);

   

    return  Scaffold(
     //backgroundColor: Color.fromARGB(153, 242, 242, 242),
      appBar: AppBar(
        title: const Text("Home Screen"),
        elevation: 10.0,

      ) ,

      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             const Text('Contador', style: TamanoDeLaLetra),
             Text('$contador', style:  const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        //child: const Text("Hola"),
        child: const Icon(Icons.plus_one),
        onPressed: () => {
        
        setState(() {
          contador++;
          print('$contador');
          
        })
        
        },),
    );
  }
}