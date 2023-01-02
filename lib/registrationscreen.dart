import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:mbproject/homepage.dart';
import 'package:mbproject/utility.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String? selectedValue = 'Item 1';

// List of items in our dropdown menu

  final List<String> genderItems = [
    'Male',
    'Female',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img1.png',
                height: 150,
                width: 150,
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Please Enter your Details",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              textfield(TextFormField(
                cursorColor: Colors.green,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Name",
                    hintStyle: textstyle()),
              )),
              SizedBox(
                height: 10.0,
              ),
              textfield(TextFormField(
                cursorColor: Colors.green,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Registration ID",
                    hintStyle: textstyle()),
              )),
              SizedBox(
                height: 10.0,
              ),
              DropdownButtonFormField2(
                decoration: InputDecoration(
                  //Add isDense true and zero Padding.
                  //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  //Add more decoration as you want here
                  //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                ),
                isExpanded: true,
                hint: Text(
                  'Mode Of Admission',
                  style: textstyle(),
                ),
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black45,
                ),
                iconSize: 30,
                buttonHeight: 60,
                buttonPadding: const EdgeInsets.only(right: 10),
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                items: genderItems
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black),
                          ),
                        ))
                    .toList(),
                onChanged: (value) {
                  //Do something when changing the item if you want.
                },
                onSaved: (value) {
                  selectedValue = value.toString();
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              textfield(TextFormField(
                cursorColor: Colors.green,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Mobile Number",
                    hintStyle: textstyle()),
              )),
              SizedBox(
                height: 10.0,
              ),
              textfield(TextFormField(
                cursorColor: Colors.green,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: textstyle()),
              )),
              SizedBox(
                height: 10.0,
              ),
              textfield(TextFormField(
                cursorColor: Colors.green,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "ConfirmPassword",
                    hintStyle: textstyle()),
              )),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green.shade600,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: const Text("Enter")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
