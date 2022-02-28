import 'package:flutter/material.dart';

class PersonTile extends StatelessWidget {
  final String name;
  final bool isRemoved;

  const PersonTile({
    Key? key,
    required this.name,
    this.isRemoved = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Container(
          width: 40,
          height: 40,
          color: Colors.grey.shade200,
        ),
        title: Text(name),
        trailing: IconButton(
          icon: isRemoved ? Icon(Icons.remove) : Icon(Icons.add),
          onPressed: () {},
        ));
  }
}
