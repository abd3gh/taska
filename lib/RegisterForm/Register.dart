import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

import 'CustomTextField.dart';

class Register extends StatefulWidget {
   Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> RegisterKey = GlobalKey();
  String? requiredVaidator (String x){
    if(x.split(' ').length<3)
      return 'Error name';
  }

  String? emailVaidator (String x){
    if(!isEmail(x))
      return 'Error Email';
  }

  String? phoneVaidator (String x){
    if(x.length<9 || x.length>10)
      return 'Error Phone';
  }

  String? checkBoxVaidator (bool x){
    if(!x)
      return 'Error Accept';
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController checkBoxController = TextEditingController();

  String? countryCode = '970';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register'),),
      body: SafeArea(
        child: Form(
          key: RegisterKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height/1.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomTextField(
                    title:'name',
                      validator: requiredVaidator,
                      controller: nameController,
                  ),
                  CustomTextField(
                    textInputType: TextInputType.emailAddress,
                    title:'email',
                    validator: emailVaidator,
                    controller: emailController,
                  ),

                  CustomTextField(
                    title:'phone',
                    validator: phoneVaidator,
                    controller: phoneController, suffix: CountryCodePicker(
                    onChanged: (x){
                      countryCode = x.dialCode;
                    },
                    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                    initialSelection: 'PS',
                    showCountryOnly: false,
                    // optional. Shows only country name and flag when popup is closed.
                    showOnlyCountryWhenClosed: false,
                    // optional. aligns the flag and the Text left
                    alignLeft: false,
                  ),
                    textInputType: TextInputType.phone,
                  ),



                  ElevatedButton(onPressed: (){
                    RegisterKey.currentState!.validate();
                  },
                      child: Text('Register'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
