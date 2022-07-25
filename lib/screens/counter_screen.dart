import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
   int contador = 10;

   void incrementar(){
    contador++;
    setState(() {
      
    });
   }
    void decrementar(){
    contador--;
    setState(() {
      
    });
   }
    void reset(){
    contador=0;
    setState(() {
      
    });
   }



  @override
  Widget build(BuildContext context) {
    const TamanoDeLaLetra =  TextStyle(fontSize: 30);

   

    return  Scaffold(
     //backgroundColor: Color.fromARGB(153, 242, 242, 242),
      appBar: AppBar(
        title: const Text("Home Screen"),
        //elevation: 10.0,

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

      floatingActionButton: CustomFloatingButton(incrementarFunc: incrementar, decrementarFunc: decrementar, reset: reset,),
    );
  }
}

class CustomFloatingButton extends StatelessWidget {

  final Function incrementarFunc;
  final Function decrementarFunc;
  final Function reset;

  const CustomFloatingButton({
    Key? key, required this.incrementarFunc, required this.decrementarFunc, required this.reset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     
      children: [
       
        FloatingActionButton(
          //child: const Text("Hola"),
           child: const Icon(Icons.exposure_minus_1),
         
            onPressed: () => {decrementarFunc(),
          },),

          const SizedBox(width: 20,),

           FloatingActionButton(
          //child: const Text("Hola"),
          child: const Text("Reset"),
           onPressed: () => {reset(),
          },),

          const SizedBox(width: 20,),

          FloatingActionButton(
          //child: const Text("Hola"),
         child: const Icon(Icons.plus_one),
          onPressed: () => {incrementarFunc(),
          },),
      ],
    );
  }
}