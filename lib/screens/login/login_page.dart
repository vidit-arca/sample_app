import 'package:flutter/material.dart';
import 'package:sample_app/services/auth_service.dart'; // Adjust the path as per your project structure

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginFormKey = GlobalKey<FormState>();
  final _registerFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _registerEmailController = TextEditingController();
  final TextEditingController _registerPasswordController = TextEditingController();

  final AuthService _authService = AuthService();
  bool isExistingMember = true; // Toggle between login and register forms

  void _toggleMemberType() {
    setState(() {
      isExistingMember = !isExistingMember;
    });
  }

  Future<void> _login() async {
    if (_loginFormKey.currentState!.validate()) {
      try {
        await _authService.signInWithEmailAndPassword(
          _emailController.text.trim(),
          _passwordController.text.trim(),
        );
        Navigator.pushReplacementNamed(context, '/home');
      } catch (e) {
        _showErrorDialog(e.toString());
      }
    }
  }

 Future<void> _register() async {
  if (_registerFormKey.currentState!.validate()) {
    try {
      await _authService.registerWithEmailAndPassword(
        _registerEmailController.text.trim(),
        _registerPasswordController.text.trim(),
      );
      _showSuccessDialog(); // Show success popup
    } catch (e) {
      if (e.toString().contains("email-already-in-use")) {
        _showErrorDialog(
          "The email you entered is already registered. Please try logging in or use a different email to register.",
        );
      } else if (e.toString().contains("weak-password")) {
        _showErrorDialog(
          "The password you entered is too weak. Please use a stronger password with at least 6 characters.",
        );
      } else {
        _showErrorDialog("An error occurred: ${e.toString()}");
      }
    }
  }
}


  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Registration Error"),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

 void _showSuccessDialog() {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("Registration Successful"),
      content: const Text("You have successfully registered!"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
            _navigateToLoginPage(); // Navigate to login page
          },
          child: const Text("OK"),
        ),
      ],
    ),
  );
}


void _navigateToLoginPage() {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const LoginPage()), // Navigate to the login page
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to MediCollect'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: isExistingMember
              ? Form(
                  key: _loginFormKey,
                  child: _buildLoginForm(),
                )
              : Form(
                  key: _registerFormKey,
                  child: _buildRegisterForm(),
                ),
        ),
      ),
    );
  }

  Widget _buildLoginForm() {
    return _buildAuthForm(
      title: "Login",
      emailController: _emailController,
      passwordController: _passwordController,
      onSubmit: _login,
      toggleText: "New member? Register here",
      onToggle: _toggleMemberType,
    );
  }

  Widget _buildRegisterForm() {
    return _buildAuthForm(
      title: "Register",
      emailController: _registerEmailController,
      passwordController: _registerPasswordController,
      onSubmit: _register,
      toggleText: "Already a member? Login here",
      onToggle: _toggleMemberType,
    );
  }

  Widget _buildAuthForm({
    required String title,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required VoidCallback onSubmit,
    required String toggleText,
    required VoidCallback onToggle,
  }) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blueGrey, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                return 'Please enter a valid email address';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters long';
              }
              return null;
            },
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: onSubmit,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: Text(title),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: onToggle,
            child: Text(toggleText),
          ),
        ],
      ),
    );
  }
}
