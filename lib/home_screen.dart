import 'package:flutter/material.dart';
import 'package:flutter_project/update_task_modal.dart';
import 'add_new_task_modal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                return const AddNewTaskModal();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.separated(
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
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
                                    return UpdateTaskModal();
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
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    );
                  });
            },
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: const Text('I have to do my H.W'),
            subtitle: const Text('24-10-2023'),
            trailing: const Text('Pending'),
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
}

