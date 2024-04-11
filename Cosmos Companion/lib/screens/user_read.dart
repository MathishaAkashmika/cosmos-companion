import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cosmos_companion/service/database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UserReadData extends StatefulWidget {
  const UserReadData({super.key});

  @override
  State<UserReadData> createState() => _ReadDataState();
}

class _ReadDataState extends State<UserReadData> {
  String? firstname, lastname, age, id;

  TextEditingController textcontroller = new TextEditingController();

  searchUser(String name) async {
    QuerySnapshot querySnapshot = await DatabaseMethods().getthisUserInfo(name);
    if (querySnapshot.docs.isNotEmpty) {
      setState(() {
        firstname = querySnapshot.docs[0]["First Name"];
        lastname = querySnapshot.docs[0]["Last Name"];
        age = querySnapshot.docs[0]["Age"];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Updates"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Search The Updates",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 20.0),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Color(0xFF4c59a5),
                  borderRadius: BorderRadius.circular(22)),
              child: TextField(
                controller: textcontroller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter The Event Name',
                    hintStyle: TextStyle(color: Colors.white60)),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            GestureDetector(
              onTap: () {
                searchUser(textcontroller.text);
              },
              child: Center(
                child: Container(
                  width: 150,
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "Search",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            firstname == null
                ? Container()
                : Center(
                    child: Text(
                      "Event Name :  " + firstname!,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
            SizedBox(
              height: 10.0,
            ),
            lastname == null
                ? Container()
                : Center(
                    child: Text(
                      "Date :  " + lastname!,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
            SizedBox(
              height: 10.0,
            ),
            age == null
                ? Container()
                : Center(
                    child: Text(
                      "Time :  " + age!,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
