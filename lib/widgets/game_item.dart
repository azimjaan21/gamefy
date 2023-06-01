import 'package:flutter/material.dart';

class GameItem extends StatelessWidget {
  final String id;
  final String name;
  final String company;
  final String imgUrl;
  final Function gameRemover;
  const GameItem({
    super.key,
    required this.id,
    required this.name,
    required this.company,
    required this.imgUrl,
    required this.gameRemover,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(imgUrl),
            radius: 40,
          ),
          title: Text(
            name,
            style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            '*$company',
            style: const TextStyle(color: Colors.orange),
          ),
          trailing: IconButton(
            onPressed: () {
              gameRemover(id);
            },
            icon: const Icon(
              Icons.delete_forever_outlined,
              size: 28,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
