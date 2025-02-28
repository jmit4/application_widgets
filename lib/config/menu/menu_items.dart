import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const List<MenuItem> menuItems = [
  MenuItem(
      title: 'Botones',
      subtitle: 'Se muestran botones',
      link: '/buttons',
      icon: Icons.radio_button_on_outlined),
  MenuItem(
      title: 'Tarjetas',
      subtitle: 'Contenedores',
      link: '/cards',
      icon: Icons.credit_card)
];
