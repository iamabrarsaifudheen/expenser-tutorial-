
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  height: height / 6,
                  width: double.maxFinite,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 1,
                          fit: FlexFit.loose,
                          child: Text(
                            "BALANCE",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.loose,
                          child: Text("INR 10000",
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const AllExpense()),
                        // );
                      },
                      child: Container(
                        height: height / 7,
                        width: double.maxFinite,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "TOTAL EXPENSE",
                                style: TextStyle(fontSize: 14),
                              ),
                              Text("INR 1000",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const AllIncome()),
                        // );
                      },
                      child: Container(
                        height: height / 7,
                        width: double.maxFinite,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Total INCOME",
                                style: TextStyle(fontSize: 14),
                              ),
                              Text("INR 10000",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    "Recent Transaction",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: width / 7,
                  ),
                  TextButton(
                      child: const Text(
                        "View All ",
                        style: TextStyle(fontSize: 16),
                      ),
                      onPressed: () {}),
                ],
              ),
              Flexible(
                flex: 3,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        title: Text('Railway'),
                        subtitle: Text('Transportation'),
                        trailing: Text("INR 10"),
                        leading: Icon(Icons.train),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const AddTransaction()),
            // );
          },
          backgroundColor: Theme.of(context).primaryColor),
    );
  }
}
