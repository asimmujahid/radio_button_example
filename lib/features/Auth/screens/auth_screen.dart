import 'package:flutter/material.dart';
import 'package:radio_button_example/commons/custom_buttons.dart';
import 'package:radio_button_example/commons/widgets.dart';
import 'package:radio_button_example/constants/global_widgets.dart';

enum SingingCharacter { Signup, SignIn }

class auth_screen extends StatefulWidget {
  static const routeNmane = "auth_screen_route";
  const auth_screen({super.key});

  @override
  State<auth_screen> createState() => _auth_screenState();
}

class _auth_screenState extends State<auth_screen> {
  SingingCharacter? _character = SingingCharacter.Signup;
  final _SignupFormKey = GlobalKey<FormState>();
  final _SignInFormKey = GlobalKey<FormState>();

  final TextEditingController _emailtexteditingController =
      TextEditingController();
  final TextEditingController _passwordtexteditingController =
      TextEditingController();
  final TextEditingController _nametexteditingController =
      TextEditingController();

  @override
  void dispose() {
    _emailtexteditingController;
    _passwordtexteditingController;
    _nametexteditingController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariable.graybackGroundColor,
      appBar: AppBar(
        title: Text("Amazone Clone"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Welcome",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                ListTile(
                  tileColor: _character == SingingCharacter.Signup ? GlobalVariable.backGroundColor: GlobalVariable.graybackGroundColor,
                  title: const Text('Create Account'),
                  leading: Radio<SingingCharacter>(
                    activeColor: GlobalVariable.secondarycolor,
                    value: SingingCharacter.Signup,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                if (_character == SingingCharacter.Signup)
                  Container(
                    color: GlobalVariable.backGroundColor,
                    padding: EdgeInsets.all(8),
                    child: Form(
                      key: _SignInFormKey,
                      child: Column(
                        children: [
                          Text_Field_page(controller: _emailtexteditingController, hintText: "Enter Email", labeltext: "Email",),
                          SizedBox(height: 10,),
                          Text_Field_page(controller: _passwordtexteditingController, hintText: "Enter Password", labeltext: "Password",),
                          SizedBox(height: 10,),
                          Text_Field_page(controller: _nametexteditingController, hintText: "Enter Your Name", labeltext: "Name",),
                          SizedBox(height: 10,),
                          CustomButtons(text: "SignUp Account", ontap: (){})
                          ],
                      ),
                    ),
                  ),
                ListTile(
                  tileColor: _character == SingingCharacter.Signup ? GlobalVariable.backGroundColor: GlobalVariable.graybackGroundColor,
                  title: const Text('SignIn Account'),
                  leading: Radio<SingingCharacter>(
                    activeColor: GlobalVariable.secondarycolor,
                    value: SingingCharacter.SignIn,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                              if (_character == SingingCharacter.SignIn)
                  Container(
                    color: GlobalVariable.backGroundColor,
                    padding: EdgeInsets.all(8),
                    child: Form(
                      key: _SignInFormKey,
                      child: Column(
                        children: [
                          Text_Field_page(controller: _emailtexteditingController, hintText: "Enter Email", labeltext: "Email",),
                          SizedBox(height: 10,),
                          Text_Field_page(controller: _passwordtexteditingController, hintText: "Enter Password", labeltext: "Password",),
                          SizedBox(height: 10,),
                        //  Text_Field_page(controller: _nametexteditingController, hintText: "Enter Your Name", labeltext: "Name",),
                          SizedBox(height: 10,),
                          CustomButtons(text: "SignIn Account", ontap: (){})
                          ],
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
