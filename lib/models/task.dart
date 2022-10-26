
class Task  {
  bool isDone;
  late String name;
  Task({ required this.name ,this.isDone = false});
  void  toggleDone (){
    isDone = !isDone;
  }

}