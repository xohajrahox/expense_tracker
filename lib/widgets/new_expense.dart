import 'package;fluuter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  State<NewExpense> createState(){
    return _NewExpenseState();
  }
}
class _NewExpenseState extends State<NewExpense>{
  final _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children:[
          TextField(
            controller: _titleController,
            maxLength: 50,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              label: Text("Title"),
            ),
          ),
          Row(children: [
            //Make the amount field here
          ],),
          Row(children: [
            ElevatedButton(ocPressed: (){
              print(_titleController.text);
            }, child: Text("Save Expense"))
          ],)
        ]
      )
    );
  }
}