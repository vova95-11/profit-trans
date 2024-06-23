import 'package:flutter/material.dart';

class PtListTile extends StatelessWidget {
  const PtListTile({
    super.key,
    required this.icon,
    required this.color,
    required this.title,
  });

  final IconData icon;
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(),
      leading: Icon(icon, color: color),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              letterSpacing: 1.8,
            ),
      ),
    );
  }
}
