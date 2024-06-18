import 'package:flutter/material.dart';

AppBar customAppBar(String title) {
  return AppBar(
    title: Text(title),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.local_parking),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.attach_money),
      ),
      PopupMenuButton(
        itemBuilder: (context) => [
          const PopupMenuItem(
            child: Text('Meu perfil'),
          ),
          const PopupMenuItem(
            child: Text('Configurações'),
          ),
        ],
      ),
    ],
  );
}
