import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final List<TodoItem> _tasks = [];

  void _addTask(String task) {
    setState(() {
      _tasks.add(TodoItem(name: task, isComplete: false));
    });
  }

  void _taskComplete(int index) {
    setState(() {
      _tasks[index].isComplete = !_tasks[index].isComplete;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Todo List',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          TaskInputWidget(
            onSubmitted: _addTask,
          ),
          Expanded(
            child: TaskListWidget(
              tasks: _tasks,
              onToggleComplete: _taskComplete,

            ),
          ),
        ],
      ),
    );
  }
}

class TodoItem {
  String name;
  bool isComplete;

  TodoItem({required this.name, required this.isComplete});
}

class TaskInputWidget extends StatelessWidget {
  final Function(String) onSubmitted;

  const TaskInputWidget({super.key, required this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: const TextStyle(color: Colors.blue, fontSize: 24),
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        20,
                      ),
                    ),
                    borderSide: BorderSide()),
                suffixStyle: TextStyle(color: Colors.red),
                labelStyle: TextStyle(fontSize: 24),
                hintText: "Input project",
                labelText: 'New Task',
              ),
              onSubmitted: (String value) {
                if (value.isNotEmpty) {
                  onSubmitted(value);
                  controller.clear();
                }
              },
            ),
          ),
          IconButton(
            focusColor: Colors.red,
            icon: Icon(
              Icons.add,
              color: Colors.black,
              size: 39,
            ),
            onPressed: () {
              if (controller.text.isNotEmpty) {
                onSubmitted(controller.text);
                controller.dispose();
              }
            },
          ),
        ],
      ),
    );
  }
}

class TaskListWidget extends StatelessWidget {
  final List<TodoItem> tasks;
  final Function(int) onToggleComplete;

  TaskListWidget({required this.tasks, required this.onToggleComplete});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return ListTile(
          title: Text(
            task.name,
            style: TextStyle(
              decoration: task.isComplete
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
          ),
          trailing: Checkbox(
            value: task.isComplete,
            onChanged: (bool? value) {
              onToggleComplete(index);
            },
          ),
        );
      },
    );
  }
}
