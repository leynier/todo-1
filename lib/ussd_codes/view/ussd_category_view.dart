import 'package:flutter/material.dart';
import 'package:todo/app/app.dart';
import 'package:todo/ussd_codes/ussd_codes.dart';

class UssdCategoryView extends StatelessWidget {
  const UssdCategoryView({
    Key? key,
    required this.category,
    this.recent,
  }) : super(key: key);

  final UssdCategory category;
  final bool? recent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(category.name),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          Hero(
            tag: '${category.key}-$recent',
            child: Icon(
              strIcons[category.icon],
              size: 82,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.blue,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ...category.items.map(
            (e) => UssdItemWidget(
              ussdItem: e,
              recent: recent,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
