import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransctionItem extends StatelessWidget {
  const TransctionItem({
    super.key,
    required this.transactions,
    required this.dateFormat,
    required this.deleteTx,
  });

  final Transaction transactions;
  final DateFormat dateFormat;
  final Function deleteTx;

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat().add_yMMMd().add_jm();
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 16,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: ListTile(
        title: Text(
          transactions.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        subtitle: Text(
          dateFormat.format(transactions.date),
          style: Theme.of(context).textTheme.labelSmall,
        ),
        trailing: MediaQuery.of(context).size.width > 375
            ? ElevatedButton.icon(
                onPressed: () => deleteTx(transactions.id),
                icon: const Icon(Icons.delete),
                label: const Text('Delete'),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  iconColor: MaterialStateProperty.all(
                      Theme.of(context).colorScheme.error),
                ),
              )
            : IconButton(
                onPressed: () => deleteTx(transactions.id),
                icon: Icon(
                  Icons.delete,
                  color: Theme.of(context).colorScheme.error,
                )),
        leading: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
              child: Text(
                '\$${transactions.amount.toStringAsFixed(2)}',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimaryContainer),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
