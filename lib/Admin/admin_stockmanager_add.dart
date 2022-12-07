import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Stock_Manager/Stock_Products.dart';
import '../Stock_Manager/Stock_Products_List.dart';

class adminStockadd extends StatefulWidget {
  const adminStockadd({Key? key}) : super(key: key);

  @override
  State<adminStockadd> createState() => _adminStockaddState();
}

class _adminStockaddState extends State<adminStockadd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2F8F9D),
        shadowColor: Color(0xFF82DBD8),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Text(
          'Admin',
          style: GoogleFonts.ubuntu(fontSize: 25.0),
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        child: Container(
                          height: 70.0,
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: Color(0xFF2F8F9D),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 20.0,
                                  color: Color(0xFF7A9EB1),
                                )
                              ]),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 17),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      "assets/logo/add_user.png",
                                      width: 45,
                                      height: 45,
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  child: Text(
                                    "Add User",
                                    style: GoogleFonts.ubuntu(
                                        fontSize: 17, color: Colors.white),
                                  ))
                            ],
                          ),
                        )),
                    Expanded(
                        child: Container(
                          height: 70.0,
                          margin: EdgeInsets.all(14.0),
                          decoration: BoxDecoration(
                              color: Color(0xFF2F8F9D),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 20.0,
                                  color: Color(0xFF7A9EB1),
                                )
                              ]),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 13),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      "assets/logo/list_user.png",
                                      width: 65,
                                      height: 45,
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  child: TextButton(
                                    onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                stock_list())),
                                    child: Text(
                                      "List User",
                                      style: GoogleFonts.ubuntu(
                                          fontSize: 17, color: Colors.white),
                                    ),
                                  ))
                            ],
                          ),
                        ))
                  ],
                ),
                Row(children: <Widget>[
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: const Divider(
                          color: Colors.black,
                          height: 50,
                        )),
                  ),
                ]),
                Column(
                  children: <Widget>[
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Add New User',
                            style: GoogleFonts.ubuntu(fontSize: 18),
                          ),
                        ))
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                      height: 500.0,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 20.0,
                              color: Color(0xFF90C8AC),
                            )
                          ]),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: const <Widget>[
                            text_input(
                              label: 'User Id',
                              hinttext: 'Please enter User Id',
                              iconname: Icons.numbers, controller: null,
                            ),
                            text_input(
                              label: 'First Name',
                              hinttext: 'Please enter First Name',
                              iconname: Icons.drive_file_rename_outline,
                              controller: null,
                            ),
                            text_input(
                              label: 'Last Name',
                              hinttext: 'Please enter Last Name',
                              iconname: Icons.drive_file_rename_outline,
                              controller: null,
                            ),
                            text_input(
                              label: 'Email',
                              hinttext: 'Please enter Email',
                              iconname: Icons.email,
                              controller: null,
                            ),
                            text_input(
                              label: 'Phone Number',
                              hinttext: 'Please enter Phone Number',
                              iconname: Icons.numbers,
                              controller: null,
                            ),
                            text_input(
                              label: 'Password',
                              hinttext: 'Please enter Password',
                              iconname: Icons.password,
                              controller: null,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: FloatingActionButton.extended(
                        backgroundColor: Color(0xFF3A8891),
                        onPressed: () {

                          }, label: Text(
                          'Save User',
                          style: GoogleFonts.ubuntu(),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
