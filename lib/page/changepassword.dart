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
  bool _isOldPasswordObscured = true;
  bool _isNewPasswordObscured = true;
  bool _isConfirmPasswordObscured = true;

  void _toggleOldPasswordVisibility() {
    setState(() {
      _isOldPasswordObscured = !_isOldPasswordObscured;
    });
  }

  void _toggleNewPasswordVisibility() {
    setState(() {
      _isNewPasswordObscured = !_isNewPasswordObscured;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _isConfirmPasswordObscured = !_isConfirmPasswordObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [Colors.blueAccent, Colors.lightBlueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds),
              child: Text(
                'Change Password',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Center(
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
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isOldPasswordObscured
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: _toggleOldPasswordVisibility,
                        ),
                      ),
                      obscureText: _isOldPasswordObscured,
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
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isNewPasswordObscured
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: _toggleNewPasswordVisibility,
                        ),
                      ),
                      obscureText: _isNewPasswordObscured,
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
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isConfirmPasswordObscured
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: _toggleConfirmPasswordVisibility,
                        ),
                      ),
                      obscureText: _isConfirmPasswordObscured,
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
        )
      ],
    );
  }
}
