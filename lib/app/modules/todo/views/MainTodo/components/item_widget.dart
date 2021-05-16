import 'package:explaning/app/modules/todo/models/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ItemWidget extends StatelessWidget {
  final TodoModel item;
  final Function removeClicked;

  const ItemWidget({Key? key, required this.item, required this.removeClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListTile(
          title: Text('${item.title}'),
          leading: Checkbox(
            value: item.check,
            onChanged: (bool? value) => item.setCheck(value!),
          ),
          trailing: IconButton(
              icon: Icon(Icons.remove_circle),
              onPressed: () {
                removeClicked.call();
              }),
        );
      },
    );
  }
}
