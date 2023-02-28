import 'package:flutter/material.dart';
import 'package:flutter02/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutes.menuOption;
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Home Screen')),
        ),
        body: ListView.separated(
          itemCount: menuOption.length,
          itemBuilder: (_, index) => ListTile(
            onTap: () {
              // final route = MaterialPageRoute(
              //     builder: (context) => const ListView2Screen());
              // Navigator.push(context, route);
              Navigator.pushNamed(context, menuOption[index].route);
            },
            leading: Icon(
              menuOption[index].icon,
              // color: AppTheme.primary,
            ),
            title: Text(menuOption[index].route),
            trailing: const Icon(
              Icons.arrow_forward_outlined,
              // color: AppTheme.primary,
            ),
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
