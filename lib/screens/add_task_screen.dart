import 'package:flutter/material.dart';
import 'package:todo_flutter/models/task_data.dart';
import 'package:provider/provider.dart';


class AddTaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    String ? newTaskTitle;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){

                newTaskTitle = newText;
              },
            ),

            MaterialButton(
              child: const Text('Add',
              style: TextStyle(
                color: Colors.white,
              ),),
              color: Colors.lightBlueAccent,
                onPressed: (){
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
                Navigator.pop(context);

            })
          ],
        ),
      ),
    );
  }
}
