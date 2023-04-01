import 'package:exercise1_paml_140/home_page.dart';
import 'package:exercise1_paml_140/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repasswordController = TextEditingController();
  bool _passwordVisible = false;
  bool _repasswordVisible = false;
  String _errorMessage = '';
  String name = '';
  String? username;
  String? pass;
  String? repass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minimumSize: const Size(50,60),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ClipOval(
                child: Image.asset(
                  'android/assets/images/register-logo.png',
                  width: 130,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Register',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.yellow
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue
                          )
                        ),
                        prefixIcon: Icon(Icons.person, color: Colors.blue),
                        labelText: 'Enter your name',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        else if (value.length < 6 ) {
                          return 'Name must be at least 6 characters';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        name = value!;
                      },
                    ),
                    const SizedBox(height: 16),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue
                          )
                        ),
                        prefixIcon: Icon(Icons.email, color: Colors.blue),
                        labelText: 'Enter your email',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue
                          )
                        ),
                        prefixIcon: const Icon(Icons.lock, color: Colors.blue),
                        labelText: 'Enter your password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),
                      obscureText: !_passwordVisible,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        else if (value.length < 6 ) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Re-Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _repasswordController,
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue
                          )
                        ),
                        prefixIcon: const Icon(Icons.lock, color: Colors.blue),
                        labelText: 'Re-Enter your password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _repasswordVisible = !_repasswordVisible;
                            });
                          },
                        ),
                      ),
                      obscureText: !_repasswordVisible,
                      validator: (value) {
                        pass = _passwordController.text;
                        if (value == null || value.isEmpty){
                          return 'Please enter your password';
                        }
                        if (value != pass) {
                          return 'Password must be the same';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    Text(
                      _errorMessage,
                      style: const TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          username = _usernameController.text;
                          pass = _passwordController.text;
                          repass = _repasswordController.text;
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage(name: username)
                              )
                            );
                        } else {
                            setState(() {  
                            _errorMessage ='Please try again.';
                            });
                          }
                      },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          minimumSize: const Size(double.infinity, 70),
                        ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 20  
                        ),),
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
