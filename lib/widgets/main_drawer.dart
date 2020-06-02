import 'package:flutter/material.dart';
import 'package:mealsapp/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget _buildListTile(
      BuildContext context, String title, IconData icon, Function handler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline5,
      ),
      onTap: handler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).primaryColor,
            child: Text(
              'Umm Wait for it...',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          _buildListTile(
            context,
            'Meals',
            Icons.restaurant,
            () => Navigator.of(context).pushReplacementNamed('/'),
          ),
          _buildListTile(
            context,
            'Filters',
            Icons.settings,
            () => Navigator.of(context).pushReplacementNamed(FilterScreen.routeName),
          ),
        ],
      ),
    );
  }
}
