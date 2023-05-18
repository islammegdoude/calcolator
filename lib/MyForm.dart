import 'package:calculator/shoose.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'components/components.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  String? _genderString;

  int? _age, _gender;
  double? _height, _weight, _duration, _heartRate, _bodyTemp;
  void calculate() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Result'),
        content: Text('ther is a problem in the server'),
      ),
    );
  }

  void _calculate() async {
    if (_formKey.currentState!.validate()) {
      if (_genderString == 'Male') {
        _gender = 0;
      } else {
        _gender = 1;
      }
      // Make the API request with the input values as query parameters
      final response = await http
          .get(Uri.parse(
              'http://127.0.0.1:5000/predict?Gender=$_gender&Age=$_age&Height=$_height&Weight=$_weight&Duration=$_duration&Heart_Rate=$_heartRate&Body_Temp=$_bodyTemp'))
          .then((value) {
        
      }).catchError((err) {
        showDialog(
          context: context,
          builder: (_) => const AlertDialog(
            title: Text('Result'),
            content: Text('ther is a problem in the server'),
          ),
        );
      });
      if (response.statusCode == 200) {
        if (response.body != null) {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text('Result'),
              content: Text('The calculated value is ${response.body}'),
            ),
          );
        } else {
          // Handle invalid response value here
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text('Result'),
              content: Text('The calculated value is null'),
            ),
          );
        }
      }
      if (response.statusCode != 200) {
        // Handle non-200 response status code here
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Result'),
            content: Text('ther is a problem in the server'),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
          navigateAndFinish(context, ShoosePage());
        }, icon: Icon(Icons.arrow_back_ios_new_rounded)),
          centerTitle: true,
          title: Text('Calories Calcolator'),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                DropdownButtonFormField<String>(
                  value: _genderString,
                  onChanged: (value) => setState(() => _genderString = value),
                  validator: (value) =>
                      value == null ? 'Gender is required' : null,
                  borderRadius: BorderRadius.circular(12),
                  items: ['Male', 'Female']
                      .map((gender) => DropdownMenuItem(
                            value: gender,
                            child: Text(gender),
                          ))
                      .toList(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 2)),
                    labelText: 'Gender',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) =>
                      setState(() => _age = int.tryParse(value)),
                  validator: (value) =>
                      value!.isEmpty ? 'Age is required' : null,
                  decoration: InputDecoration(
                    labelText: 'Age',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) =>
                      setState(() => _height = double.tryParse(value)),
                  validator: (value) =>
                      value!.isEmpty ? 'Height is required' : null,
                  decoration: InputDecoration(
                    labelText: 'Height',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) =>
                      setState(() => _weight = double.tryParse(value)),
                  validator: (value) =>
                      value!.isEmpty ? 'Weight is required' : null,
                  decoration: InputDecoration(
                    labelText: 'Weight',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) =>
                      setState(() => _duration = double.tryParse(value)),
                  validator: (value) =>
                      value!.isEmpty ? 'Duration is required' : null,
                  decoration: InputDecoration(
                    labelText: 'Duration',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) =>
                      setState(() => _heartRate = double.tryParse(value)),
                  validator: (value) =>
                      value!.isEmpty ? 'Heart rate is required' : null,
                  decoration: InputDecoration(
                    labelText: 'Heart rate',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) =>
                      setState(() => _bodyTemp = double.tryParse(value)),
                  validator: (value) =>
                      value!.isEmpty ? 'Body temperature is required' : null,
                  decoration: InputDecoration(
                    labelText: 'Body temperature',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _calculate();
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 59,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Calculate',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
