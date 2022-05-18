
import 'package:expenser_tutorial/widgets/button.dart';
import 'package:expenser_tutorial/widgets/text_box.dart';
import 'package:flutter/material.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({Key? key}) : super(key: key);

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _titleController = TextEditingController();
  TextEditingController _amountController = TextEditingController();
  String? selectedCategory;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      appBar: AppBar(
          title: const Text('Add Transaction'),
          backgroundColor: Theme.of(context).primaryColor),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextBox(
                      hintText: 'Title',
                      controller: _titleController,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      type: 'title'),
                  SizedBox(height: height / 40),
                  TextBox(
                      hintText: 'Amount',
                      controller: _amountController,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      type: 'amount'),
                  SizedBox(height: height / 40),
                  getDropDownMenu(),
                  SizedBox(height: height / 20),
                  Button(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      text: 'Add Transaction')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getDropDownMenu() {
    return DropdownButtonFormField(
        decoration: InputDecoration(
          hintText: "Select Your Category",
          enabled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
            // borderRadius: BorderRadius.circular(14),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 2),
            // borderRadius: BorderRadius.circular(14),
          ),
          // filled: true,
          // fillColor: Colors.blueAccent,
        ),
        validator: (value) => value == null ? "Select a category" : null,
        // dropdownColor: Colors.blueAccent,
        value: selectedCategory,
        onChanged: (String? newValue) {
          setState(() {
            selectedCategory = newValue!;
          });
        },
        items: dropdownItems);
  }

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Transportation"), value: "Transportation"),
      DropdownMenuItem(child: Text("Food"), value: "Food"),
      DropdownMenuItem(child: Text("Education"), value: "Education"),
      DropdownMenuItem(child: Text("Finance"), value: "Finance"),
    ];
    return menuItems;
  }
}
