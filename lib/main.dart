import 'package:calculator_p/calculator_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;
  final counterBloc= CounterBloc();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder(
                stream: counterBloc.counterStream,
                initialData: 0,
                builder: (context, snapshot){
                  return Text(
                    '${snapshot.data}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                }
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    counterBloc.eventSink.add(CounterAction.firstno);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder
                      (borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text("1", style: TextStyle(color: Colors.amber),),
                ),
                OutlinedButton(
                  onPressed: (){
                    counterBloc.eventSink.add(CounterAction.secondno);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text("2", style: TextStyle(color: Colors.amber),),

                ),

                OutlinedButton(
                  onPressed: (){
                    counterBloc.eventSink.add(CounterAction.addsymbol);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text("+", style: TextStyle(color: Colors.amber),),

                ),OutlinedButton(
                  onPressed: (){
                    counterBloc.eventSink.add(CounterAction.equalsymbol);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text("=", style: TextStyle(color: Colors.amber),),

                ),OutlinedButton(
                  onPressed: (){
                    counterBloc.eventSink.add(CounterAction.Clear);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text("Del", style: TextStyle(color: Colors.amber),),

                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    counterBloc.eventSink.add(CounterAction.three);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder
                      (borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text("3", style: TextStyle(color: Colors.amber),),
                ),
                OutlinedButton(
                  onPressed: (){
                    counterBloc.eventSink.add(CounterAction.four);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text("4", style: TextStyle(color: Colors.amber),),

                ),

                OutlinedButton(
                  onPressed: (){
                    counterBloc.eventSink.add(CounterAction.five);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text("5", style: TextStyle(color: Colors.amber),),

                ),OutlinedButton(
                  onPressed: (){
                    counterBloc.eventSink.add(CounterAction.six);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text("6", style: TextStyle(color: Colors.amber),),

                ),OutlinedButton(
                  onPressed: (){
                    counterBloc.eventSink.add(CounterAction.seven);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text("7", style: TextStyle(color: Colors.amber),),

                ),
              ],
            ),Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    counterBloc.eventSink.add(CounterAction.eight);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder
                      (borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text("8", style: TextStyle(color: Colors.amber),),
                ),
                OutlinedButton(
                  onPressed: (){
                    counterBloc.eventSink.add(CounterAction.nine);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text("9", style: TextStyle(color: Colors.amber),),

                ),

                OutlinedButton(
                  onPressed: (){
                    counterBloc.eventSink.add(CounterAction.zero);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text("0", style: TextStyle(color: Colors.amber),),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
