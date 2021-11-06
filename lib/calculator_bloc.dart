import 'dart:async';

enum CounterAction{
   Increment,
   Decrement, Clear,
  firstno,secondno,addsymbol,equalsymbol,three,four,five,six,seven,eight,nine,zero
}
class CounterBloc{
  List<int> numbers = [];
  String t='';
  String u='';
  late int counter;
  final stateStreamController=StreamController<int>();
  StreamSink<int> get counterSink => stateStreamController.sink;
  Stream<int> get counterStream => stateStreamController.stream;

  final eventStreamController=StreamController<CounterAction>();
  StreamSink<CounterAction> get eventSink => eventStreamController.sink;
  Stream<CounterAction> get eventStream => eventStreamController.stream;

  CounterBloc(){
    counter=0;
    eventStream.listen((event) {
      if(event ==CounterAction.Increment){
        counter=counter+4;

      }
      else if(event ==CounterAction.Decrement){
        counter--;
      }else if(event ==CounterAction.firstno){

        counter=1;

        numbers.add(counter);
        String m="";
        for( var i = 0 ; i < numbers.length; i++ ) {
          m += numbers[i].toString();
        }
        var l=int.parse(m);
        counter=l;

      }else if(event ==CounterAction.three){

        counter=3;

        numbers.add(counter);
        String m="";
        for( var i = 0 ; i < numbers.length; i++ ) {
          m += numbers[i].toString();
        }
        var l=int.parse(m);
        counter=l;

      }else if(event ==CounterAction.four){

        counter=4;

        numbers.add(counter);
        String m="";
        for( var i = 0 ; i < numbers.length; i++ ) {
          m += numbers[i].toString();
        }
        var l=int.parse(m);
        counter=l;
      }else if(event ==CounterAction.five){

        counter=5;

        numbers.add(counter);
        String m="";
        for( var i = 0 ; i < numbers.length; i++ ) {
          m += numbers[i].toString();
        }
        var l=int.parse(m);
        counter=l;
      }else if(event ==CounterAction.six){

        counter=6;

        numbers.add(counter);
        String m="";
        for( var i = 0 ; i < numbers.length; i++ ) {
          m += numbers[i].toString();
        }
        var l=int.parse(m);
        counter=l;
      }else if(event ==CounterAction.seven){

        counter=7;

        numbers.add(counter);
        String m="";
        for( var i = 0 ; i < numbers.length; i++ ) {
          m += numbers[i].toString();
        }
        var l=int.parse(m);
        counter=l;
      }else if(event ==CounterAction.eight){

        counter=8;

        numbers.add(counter);
        String m="";
        for( var i = 0 ; i < numbers.length; i++ ) {
          m += numbers[i].toString();
        }
        var l=int.parse(m);
        counter=l;

      }else if(event ==CounterAction.nine){

        counter=9;

        numbers.add(counter);
        String m="";
        for( var i = 0 ; i < numbers.length; i++ ) {
          m += numbers[i].toString();
        }
        var l=int.parse(m);
        counter=l;

      }else if(event ==CounterAction.zero){

        counter=0;

        numbers.add(counter);
        String m="";
        for( var i = 0 ; i < numbers.length; i++ ) {
          m += numbers[i].toString();
        }
        var l=int.parse(m);
        counter=l;
      }else if(event ==CounterAction.secondno){
        counter=2;
        numbers.add(counter);
        String m="";
        for( var i = 0 ; i < numbers.length; i++ ) {
          m += numbers[i].toString();
        }
        var l=int.parse(m);
        counter=l;
      }
      else if(event ==CounterAction.Clear){
        counter=0;
        numbers.clear();

      }
      else if(event ==CounterAction.equalsymbol){
        String m="";
        for( var i = 0 ; i < numbers.length; i++ ) {
          m += numbers[i].toString();
        }
        var a=int.parse(t);
        var b=int.parse(m);
        //var c=int.parse(u);
        var o=a+b;
        counter=o;
        u=o.toString();
      }
      else if(event ==CounterAction.addsymbol){
        String n="";
        for( var i = 0 ; i < numbers.length; i++ ) {
          n += numbers[i].toString();
        }
          t=n;
          numbers.clear();
      }
      counterSink.add(counter);
    });
  }
}
