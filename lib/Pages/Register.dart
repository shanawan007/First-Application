import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/HomePage.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/Pages/LoginPage.dart';

class Register extends StatefulWidget {
  registeration createState() => registeration();
}
class registeration extends State<Register>{

  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Registeration Page",
            style: TextStyle(
              color: Colors.purple,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  controller: fnameController,
                  decoration: InputDecoration(
                    hintText: "Enter First Name",
                    labelText: "First Name",
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: lnameController,
                  
                  decoration: InputDecoration(
                    hintText: "Enter Last Name",
                    labelText: "Last Name",
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Enter Email",
                    labelText: "Email",
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  child: Text("Login"),
                  style: TextButton.styleFrom(minimumSize: Size(130, 40)),
                  onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                  title: const Text('Alert'),
                  content: Column(children: <Widget>[
                    Text("First Name: "+fnameController.text),
                    Text("Last Name: "+lnameController.text),
                    Text("Password: "+passwordController.text),
                    Text("Email: "+emailController.text)
                  ],
                  ),
                  actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, MyRoutes.loginRoute),
                    child: const Text('OK'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, MyRoutes.homeRoute),
                    child: const Text('Sign In'),
                  ),
          ],
        ),
      ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}

