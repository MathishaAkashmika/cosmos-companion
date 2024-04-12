import 'package:cosmos_companion/service/database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UpdatesAdd extends StatefulWidget {
  const UpdatesAdd({super.key});

  @override
  State<UpdatesAdd> createState() => _HomeState();
}

class _HomeState extends State<UpdatesAdd> {

uploadData()async{

  Map<String, dynamic> uploaddata={
    "First Name": userfirstnamecontroller.text,
    "Last Name": userlastnamecontroller.text,
    "Age": useragecontroller.text,
  };

 await DatabaseMethods().addUserDetails(uploaddata);
 Fluttertoast.showToast(
        msg: "Event Data Uploaded Successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );

}

  TextEditingController userfirstnamecontroller = new TextEditingController();
  TextEditingController userlastnamecontroller = new TextEditingController();
  TextEditingController useragecontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Event"),
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
                "Event Name",
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
                controller: userfirstnamecontroller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Event Name',
                    hintStyle: TextStyle(color: Colors.white60)),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Date",
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
                controller: userlastnamecontroller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'YYYY-MM-DD',
                    hintStyle: TextStyle(color: Colors.white60)),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Time",
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
                controller: useragecontroller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'HH:MM',
                    hintStyle: TextStyle(color: Colors.white60)),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 90.0,
            ),
            GestureDetector(
              onTap: (){
                uploadData();
              },
              child: Center(
                child: Container(
                  width: 170,
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "Create Event",
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
