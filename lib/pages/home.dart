import 'package:flutter/material.dart';
class MyApp extends StatefulWidget
{
  const MyApp({ Key? key }) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>
{
  int contador=0;
  //@override
  /*void initState()
  {
    contador=0;
    super.initState();
  }*/
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        centerTitle: true,
        title: const Text("Contador"),
      ),
      body:Center
      (
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            const Text
            (
              "Esto es un contador",
              style: TextStyle
              (
                fontWeight: FontWeight.bold
              )
            ),
            Text
            (
              '$contador',
              style: const TextStyle
              (
                fontSize: 70.0
              )
            )
          ]
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones()
    );
  }
  Widget _crearBotones()
  {
    return Padding
    (
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row
      (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:
        [
          FloatingActionButton
          (
            child: const Icon(Icons.remove),
            onPressed: ()
            {
              setState(()
              {
                if(contador!=0)
                {
                  contador--;
                }
              });
            }
          ),
          FloatingActionButton
          (
            child: const Icon(Icons.exposure_zero),
            onPressed: ()
            {
              setState(()
              {
                contador=0;
              });
            }
          ),
          FloatingActionButton
          (
            child: const Icon(Icons.add),
            onPressed: ()
            {
              setState(()
              {
                contador++;
              });
            }
          )
        ]
      )
    );
  }
}