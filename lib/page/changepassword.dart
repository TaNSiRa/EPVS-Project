import 'package:flutter/material.dart';

class Changepassword extends StatefulWidget {
  const Changepassword({super.key});

  @override
  State<Changepassword> createState() => _ChangepasswordState();
}

class _ChangepasswordState extends State<Changepassword> {
  @override
  Widget build(BuildContext context) {
    return ChangepasswordBody();
  }
}

class ChangepasswordBody extends StatefulWidget {
  const ChangepasswordBody({super.key});

  @override
  State<ChangepasswordBody> createState() => _ChangepasswordBodyState();
}

class _ChangepasswordBodyState extends State<ChangepasswordBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 40,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Old Password',
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 5),
              SizedBox(
                height: 40,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'New Password',
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 5),
              SizedBox(
                height: 40,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'New Password Confirm',
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {},
                child: Text('Change Password'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(260, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  primary: Colors.red,
                  onPrimary: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
