import 'package:driving_school/utlis/data.dart';
import 'package:flutter/material.dart';
import 'package:driving_school/utlis/data.dart';

class instructorwidget extends StatelessWidget {
  final Item item;

  const instructorwidget({Key? key,
    required this.item
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(item.image),
      title: Text(item.name),
      subtitle: Text(item.car),

    );
  }
}

