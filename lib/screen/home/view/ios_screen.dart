import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_setting/screen/home/provider/home_provider.dart';

class iosscreen extends StatefulWidget {
  const iosscreen({Key? key}) : super(key: key);

  @override
  State<iosscreen> createState() => _homeState();
}

class _homeState extends State<iosscreen> {
  HomeProvider? homeprovider;

  @override
  Widget build(BuildContext context) {
    homeprovider = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Settings UI",
              style: TextStyle(color: Colors.white, letterSpacing: 0.2)),
          backgroundColor: Colors.red,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Common",
                    style: TextStyle(color: Colors.grey),
                  )),
              SizedBox(
                height: 10,
              ),
              CupertinoListTile(
                title: Text("Launguage"),
                leading: Icon(
                  Icons.language,
                  color: Colors.black,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "English",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CupertinoListTile(
                title: Text("Environment"),
                leading: Icon(
                  Icons.cloud,
                  color: Colors.black,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Production",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Account",
                    style: TextStyle(color: Colors.grey),
                  )),
              SizedBox(
                height: 10,
              ),
              CupertinoListTile(
                title: Text("Phone number"),
                leading: Icon(
                  Icons.call,
                  color: Colors.black,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CupertinoListTile(
                title: Text("Email"),
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CupertinoListTile(
                title: Text("Sign out"),
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.black,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Security",
                    style: TextStyle(color: Colors.grey),
                  )),
              SizedBox(height: 10,),
              CupertinoListTile(
                title: Text("Lock app in background"),
                leading: Icon(
                  Icons.phonelink_erase,
                  color: Colors.black,
                ),
                trailing: CupertinoSwitch(value: homeprovider!.onOff,activeColor: Colors.red,onChanged: (value) {
                  homeprovider!.onClick(value);
                },),
              ),
              SizedBox(height: 10,),
              CupertinoListTile(
                title: Text("Use fingerprint"),
                leading: Icon(
                  Icons.fingerprint,
                  color: Colors.black,
                ),
                trailing: CupertinoSwitch(value: homeprovider!.onOff2,activeColor: Colors.red,onChanged: (value) {
                  homeprovider!.onClick2(value);
                },),
              ),
              SizedBox(height: 10,),
              CupertinoListTile(
                title: Text("Change password"),
                leading: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                trailing: CupertinoSwitch(value: homeprovider!.onOff3,activeColor: Colors.red,onChanged: (value) {
                  homeprovider!.onClick2(value);
                },),
              ),
              SizedBox(height: 10,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Misc",
                    style: TextStyle(color: Colors.grey),
                  )),
              SizedBox(height: 10,),
              CupertinoListTile(
                title: Text("Terms of service"),
                leading: Icon(
                  Icons.request_page,
                  color: Colors.black,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 15,
                ),
              ),
              SizedBox(height: 10,),
              CupertinoListTile(
                title: Text("Open source licence"),
                leading: Icon(
                  Icons.pages,
                  color: Colors.black,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
