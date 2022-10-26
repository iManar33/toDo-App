import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   late String newTextTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            )),
        child: Padding(
          padding: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),

          child: Column(

            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 8.0,right: 8.0,  bottom: 30.0),
                child: Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30.0,

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  onChanged: (value){
                    newTextTitle = value;
                  },
                  autofocus: true,
                  decoration: InputDecoration(
                      focusColor: Colors.lightBlueAccent,
                  ),
                  textAlign: TextAlign.center,
                    cursorColor: Colors.lightBlueAccent,

                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    backgroundColor: Colors.white,
                      fontSize: 20.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),

                child: TextButton(
                  style:TextButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                  ),
                    onPressed: () {
                    // print(Provider.of<TaskData>(context).tasks);
                    Provider.of<TaskData>(context,listen: false).addTask(newTextTitle);
                    // print(Provider.of<TaskData>(context).tasks);
                    Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Add',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                    ),
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
