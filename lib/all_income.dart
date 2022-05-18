
import 'package:expenser_tutorial/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';

class AllIncome extends StatelessWidget {
  const AllIncome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Income'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recenet Income List',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
              Flexible(
                child: ListView.builder(
                    itemCount: 100,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return TransactionTile(
                          title: "Workshop",
                          category: "Education",
                          amount: "INR 100",
                          icon: Icon(Icons.book));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
