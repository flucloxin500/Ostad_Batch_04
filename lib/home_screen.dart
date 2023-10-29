import 'package:flutter/material.dart';
import 'package:flutter_project/todo.dart';
import 'package:flutter_project/update_task_modal.dart';
import 'package:intl/intl.dart';
import 'add_new_task_modal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Todo> todoList = [] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return  AddNewTaskModal(
                  onAddTap: (Todo task) {
                    addTodo(task);
                  },
                );
              });
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.separated(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          final Todo todo = todoList[index];
          final String formattedDate = DateFormat('hh:mm a dd-MM-yyyy').format(todo.createdDateTime);
          return ListTile(
            tileColor: todo.status =='Done' ? Colors.lightBlue : null,
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Actions'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: Icon(Icons.edit),
                            title: Text('Update'),
                            onTap: () {
                              Navigator.pop(context);
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return UpdateTaskModal(
                                      todo: todo,
                                      onTodoUpdate: (String updatedDetailsText) {
                                        updateTodo(index, updatedDetailsText);
                                      },
                                    );
                                  });
                            },
                          ),
                          Divider(
                            height: 0,
                          ),
                          ListTile(
                            leading: Icon(Icons.delete),
                            title: Text('Delete'),
                            onTap: () {
                              deleteTodo(index);
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    );
                  });
            },
            onLongPress: (){
              String currentStatus = todo.status == 'Pending' ? 'Done' : 'Pending' ;
              updateTodoStatus(index, currentStatus);
            },
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: Text(todo.details),
            subtitle:  Text(formattedDate),
            trailing: Text(todo.status.toUpperCase()),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 4,
          );
        },
      ),
    );
  }

  void addTodo ( Todo task) {
    todoList.add(task);
    setState(() {});
  }
  void deleteTodo (int index) {
    todoList.removeAt(index);
    setState(() {});
  }

  void updateTodo ( int index , String todoDetails) {
    todoList[index].details = todoDetails ;
    setState(() {});
  }

  void updateTodoStatus ( int index , String status) {
    todoList[index].status = status ;
    setState(() {});
  }
}

