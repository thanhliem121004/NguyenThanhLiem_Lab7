import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6200EE),
        ),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}

//--------------------
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                _buildLogo(),
                const SizedBox(height: 40),

                //title + subtitle
                _buildTitle(context),
                const SizedBox(height: 32),

                //mail
                _buildTextField(
                  label: 'Email',
                  hint: 'Enter your email',
                  icon: Icons.email,
                  obscure: false,
                ),
                const SizedBox(height: 16),

                //password
                _buildTextField(
                  icon: Icons.lock_outline,
                  label: 'Password',
                  hint: 'Enter your password',
                  obscure: true,
                ),
                const SizedBox(height: 8),

                //forgot password   
                _buildForgotPassword(context),
                const SizedBox(height: 24),

                //login button
                _buildLoginButton(context),
                const SizedBox(height: 24),

                //sign up
                _buildSignUpRow(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //---widget logo
  Widget _buildLogo() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0xFF6200EE),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF6200EE).withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: const Icon(
        Icons.lock_outline_rounded,
        color: Colors.white,
        size: 48,
      ),
    );
  }

  //------    widget title
  Widget _buildTitle(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome Back',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'sign in to continue',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }

  //------    widget text field
  Widget _buildTextField({
    required String label,
    required String hint,
    required IconData icon,
    required bool obscure,
  }) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        fillColor: Colors.grey[100],
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF6200EE), width: 2),
        ),
      ),
    );
  }

  //---------widget forgot password
  Widget _buildForgotPassword(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Forgot Password?',
          style: TextStyle(
            color: Color(0xFF6200EE),
          ),
        ),
      ),
    );
  }

  //---------widget login button
  Widget _buildLoginButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF6200EE),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 2,
        ),
        child: const Text(
          'Login',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }

  //---------widget sign up row
  Widget _buildSignUpRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Text(
            ' Sign Up',
            style: TextStyle(
              color: Color(0xFF6200EE),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
