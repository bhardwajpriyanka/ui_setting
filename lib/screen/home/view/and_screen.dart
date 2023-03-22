import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Settings UI"),backgroundColor: Colors.red,),
        body: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(alignment: Alignment.topLeft,child: Text("Common",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),
            ),
            ListTile(leading: Icon(Icons.language),title: Text("Language"),subtitle: Text("English"),),
            SizedBox(height: 10),
            ListTile(leading: Icon(Icons.cloud),title: Text("Environment"),subtitle: Text("Production"),),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(alignment: Alignment.topLeft,child: Text("Account",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),
            ),
            SizedBox(height: 10),
            ListTile(leading: Icon(Icons.call),
                title: Text("Phone number")
            ),
            SizedBox(height: 10),
            ListTile(leading: Icon(Icons.email),title: Text("Email"),),
            SizedBox(height: 10),
            ListTile(leading: Icon(Icons.exit_to_app),title: Text("Sign Out"),),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(alignment: Alignment.topLeft,child: Text("Security",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),
            ),
            SizedBox(height: 10),
            ListTile(leading: Icon(Icons.phonelink_lock),title: Text("Lock app in background")),
            SizedBox(height: 10),
            ListTile(leading: Icon(Icons.fingerprint),title: Text("Use fingerprint")),
            SizedBox(height: 10),
            ListTile(leading: Icon(Icons.lock),title: Text("Change password"),

            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(alignment: Alignment.topLeft,child: Text("Misc",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),
            ),
          ],
        ),
      ),
    );
  }
}