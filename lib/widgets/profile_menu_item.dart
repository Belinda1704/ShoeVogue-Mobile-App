import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  final String title;
  final Widget? screen;

  const MenuItemWidget({super.key, required this.title, this.screen});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
            if (screen != null) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => screen!),
              );
            }
          },
        ),
        const Divider(),
      ],
    );
  }
}
