import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
              isChecked: task.isDone,
              title: task.name,
              checkboxCallback: (checboxState) {
                taskData.updateTask(task);
              },
              longPresCallback: (){
                taskData.deleteTask(task);
              },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
