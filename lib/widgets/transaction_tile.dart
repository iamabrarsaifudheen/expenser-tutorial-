import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    Key? key,
    required this.title,
    required this.category,
    required this.amount,
    required this.icon,
  }) : super(key: key);
  final String title;
  final String category;
  final String amount;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(category),
      trailing: Text(amount),
      leading: icon,
    );
  }
}
