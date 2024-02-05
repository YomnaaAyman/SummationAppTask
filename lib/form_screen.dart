import 'package:flutter/material.dart';
import 'package:task_1/ResultScreen.dart';
class  FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController inputOne = TextEditingController();
  TextEditingController inputTwo = TextEditingController();

  GlobalKey<FormState> formKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo, //background blue
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Form(
          key: formKey1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: inputOne,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Colors.white70, //text white
                ),
                decoration: InputDecoration(
                  label: Text('input 1'),
                  hintText: 'Please Enter Number',
                  hintStyle: TextStyle(
                    color: Colors.indigo,
                  ),
                  prefixIcon: Icon(
                    Icons.numbers_sharp,
                    color: Colors.indigo, //icon white
                  ),
                  filled: true,
                  fillColor: Colors.white70, //grey
                ),
                validator: (text){
                  if (text!.length >= 5)
                    {
                      return 'please do not enter more than 5 numbers';
                    }
                },

              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: inputTwo,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Colors.white70, //text white
                ),
                decoration: InputDecoration(
                  label: Text('input 2'),
                  hintText: 'Please Enter Number',
                  hintStyle: TextStyle(
                    color: Colors.indigo,
                  ),
                  prefixIcon: Icon(
                    Icons.numbers_sharp,
                    color: Colors.indigo, //icon white
                  ),
                  filled: true,
                  fillColor: Colors.white70, //grey
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(50, 40),
                  backgroundColor: Colors.white70, //grey
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                  onPressed: (){
                  try {
                    if (formKey1.currentState!.validate()) {
                      var result = int.parse(inputOne.text) +
                          int.parse(inputTwo.text);
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ResultScreen(result: result),
                          ),
                      );
                      print(result);
                    }
                  }catch(error)
                    {
                      print('please do not enter more than 5 numbers');
                    }
                  },
                  child: const Text('Addition'),
              )
            ],
          ),
        ),
      )
    );
  }
}
