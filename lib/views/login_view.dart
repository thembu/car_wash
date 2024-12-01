import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login_view extends StatefulWidget {
  @override
  _login_viewState createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
  // Text controllers to handle input
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // Dispose controllers when widget is removed
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    // Login logic here
    String email = _emailController.text;
    String password = _passwordController.text;

    print('Email: $email');
    print('Password: $password');
    // Add authentication logic
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(

        children: [
          // Background Image on the top half
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/car.jpg'), // Add your image here
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Curved Modal with Login Form
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.65,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Login",
                      textAlign: TextAlign.center,

                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _login,

                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),

                        backgroundColor: Colors.redAccent,
                        minimumSize: Size(100, 50),
                        fixedSize: Size(100, 50)

                      ),
                      child: Text("Login"),
                    ),

                    SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('not a member ? ' , style: TextStyle(fontWeight: FontWeight.bold),),
                        GestureDetector(
                          child:
                          const Text('Register now',
                            style: TextStyle(
                              color: Colors.blue ,
                              fontWeight: FontWeight.bold,
                            ),),
                          onTap: () async{

                            Navigator.pushReplacementNamed((context), '/register');


                          },
                        )
                      ],
                    ),


                    SizedBox(height: 20,),

                    Padding(

                      padding: EdgeInsets.symmetric(horizontal: 100),
                      child: Text('or continue with', style: TextStyle(
                          color: Colors.grey[700]
                      ),),

                    ),

                    SizedBox(height: 15,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.grey[200],
                            ),
                            child:
                            GestureDetector(
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('assets/google.png') ,
                                radius: 35,),
                              onTap: () async{

                              }
                              ,
                            )
                        ),

                      ],
                    )


                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}