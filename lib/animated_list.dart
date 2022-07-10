import 'package:flutter/material.dart';

class MyAnimatedList extends StatefulWidget {
  const MyAnimatedList({Key? key}) : super(key: key);
  @override
  State<MyAnimatedList> createState() => _MyAnimatedListState();
}

class _MyAnimatedListState extends State<MyAnimatedList> {
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void _addItem() {
    _items.insert(0, 'اغتنم ذا الحجة ${_items.length + 1}');
    _key.currentState!.insertItem(
      0,
      duration: const Duration(seconds: 1),
    );
  }

  void _deletItem(int index) {
    _key.currentState!.removeItem(
      index,
      (_, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: const Card(
            margin: EdgeInsets.all(12),
            color: Colors.redAccent,
            child: ListTile(
              title: Text(
                'Deleted',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        );
      },
      duration: const Duration(milliseconds: 600),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff112435),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xff112435),
        title: const Text('Darul-asar Code'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: AnimatedList(
              key: _key,
              initialItemCount: 0,
              padding: const EdgeInsets.all(12),
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  key: UniqueKey(),
                  sizeFactor: animation,
                  child: Card(
                    margin: const EdgeInsets.all(12),
                    color: Colors.teal,
                    child: ListTile(
                      title: Text(
                        _items[index],
                        style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          _deletItem(index);
                        },
                        icon: const Icon(
                          Icons.delete,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: _addItem,
        child: const Icon(
          Icons.add,
          size: 35,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
