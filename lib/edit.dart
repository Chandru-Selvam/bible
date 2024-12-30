import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TextFieldToList extends StatefulWidget {
  const TextFieldToList({super.key});

  @override
  _TextFieldToListState createState() => _TextFieldToListState();
}

class _TextFieldToListState extends State<TextFieldToList> {
  final TextEditingController _controller = TextEditingController();
  List<String> _items = [];

  @override
  void initState() {
    super.initState();
    _loadItems();
  }

  Future<void> _loadItems() async {
    final prefs = await SharedPreferences.getInstance();
    final storedItems = prefs.getString('items');
    if (storedItems != null) {
      setState(() {
        _items = List<String>.from(json.decode(storedItems));
      });
    }
  }

  Future<void> _addItem() async {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _items.add(_controller.text);
        _controller.clear();
      });
      await _saveItems();
    }
  }

  Future<void> _editItem(int index) async {
    final TextEditingController editController =
    TextEditingController(text: _items[index]);
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Item'),
          content: TextField(
            controller: editController,
            decoration: InputDecoration(labelText: 'Edit item'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _items[index] = editController.text;
                });
                _saveItems();
                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _deleteItem(int index) async {
    setState(() {
      _items.removeAt(index);
    });
    await _saveItems();
  }

  Future<void> _saveItems() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('items', json.encode(_items));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SharedPreferences with ListView'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter item',
                suffixIcon: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _addItem,
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_items[index]),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () => _editItem(index),
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () => _deleteItem(index),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}