import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  _Add createState() => _Add();
}


class _Add extends State {
  // const Add({Key? key}) : super(key: key);

  late String _userToDo;
  List todoList = [];

  @override
  void initState() {
    super.initState();

    todoList.addAll([]);

  }


 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Text('main'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(todoList[index]),
            child: Card(
              child: ListTile(

                title: Text(todoList[index]),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.delete_sweep,
                    color: Colors.black87,
                  ), 
                  onPressed: () {
                    setState(() {
                      todoList.removeAt(index);
                    });
                  },
                ),
              ),  
            ), 
            onDismissed: (direction) {
              // if(direction == DismissDirection.endToStart)
              setState(() {
                todoList.removeAt(index);
              });
            },
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[600],
        onPressed: () {
          showDialog(context: context, builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Add '),
              content: TextField(
                onChanged: (String value) {
                  _userToDo = value;
                }),
                actions: [
                  ElevatedButton(onPressed: () {
                    setState(() {
                      todoList.add(_userToDo);
                    });
                    Navigator.of(context).pop();
                  }, child: Text('Add'))
                ],
            );
          },);
        },
        child: Icon(
          Icons.add_card,
          color: Colors.black87,
        ),
      ),
    );
    
  }

}