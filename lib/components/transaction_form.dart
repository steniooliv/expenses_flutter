import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: "Title",
              ),
            ),
            TextField(
              controller: valueController,
              decoration: InputDecoration(
                labelText: "Value (\$)",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Text("New Transaction"),
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      BorderSide(
                        width: 2,
                        color: Colors.purple,
                      ),
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.purple),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    ),
                    textStyle: MaterialStateProperty.all(
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  onPressed: () {
                    final title = titleController.text;
                    final value = double.tryParse(valueController.text) ?? 0.0;
                    onSubmit(title, value);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
