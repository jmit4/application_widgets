import 'package:application_widgets/config/menu/menu_items.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: const _HomeView());
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return _CustomListTile(menuItem: menuItems[index]);
        });
  }
}

class _CustomListTile extends StatelessWidget {
  final MenuItem menuItem;
  
  const _CustomListTile({required this.menuItem});

  @override
  Widget build(BuildContext context) {
    final colorPrimary = Theme.of(context).primaryColor;
    return ListTile(
      leading: Icon(menuItem.icon, color: colorPrimary,),
      trailing:Icon(Icons.arrow_forward_ios, color: colorPrimary),
      title: Text(menuItem.title), subtitle: Text(menuItem.subtitle));
  }
}
