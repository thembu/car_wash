import 'package:car_wash/views/Front-End-Authentication/login_view.dart';
import 'package:car_wash/views/Front-End-Authentication/wave.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; // Import image_picker package
import 'dart:io'; // For using File to display the image

class client_register_view extends StatefulWidget {
  const client_register_view({super.key});

  @override
  State<client_register_view> createState() => _client_register_viewState();
}

class _client_register_viewState extends State<client_register_view> {
  File? _image; // Variable to hold the picked image
  final _formKey = GlobalKey<FormState>(); // Key for the form to manage state

  // Controller for the form fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Method to pick an image from the gallery
  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path); // Update the state with the picked image
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // To make the form scrollable when the keyboard appears
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // The Wave widget
              Wave(),

              // Add CircleAvatar after Wave widget
              GestureDetector(
                onTap: _pickImage, // Tap to pick an image
                child: CircleAvatar(
                  radius: 80, // Size of the avatar
                  backgroundImage: _image == null
                      ? AssetImage('assets/user.png') as ImageProvider
                      : FileImage(_image!), // Display picked image or default image
                  child: _image == null
                      ? const Icon(Icons.camera_alt, size: 40, color: Colors.white) // Show camera icon when no image
                      : const SizedBox.shrink(),
                ),
              ),

              const SizedBox(height: 20),
              const Text("Tap to add an image", style: TextStyle(fontSize: 16)),

              const SizedBox(height: 20),

              // Registration form
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Name field
                    TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),

                    // Surname field
                    TextFormField(
                      controller: _surnameController,
                      decoration: const InputDecoration(
                        labelText: 'Surname',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your surname';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),

                    // Email field
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        } else if (!RegExp(r"^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),

                    // Phone number field
                    TextFormField(
                      controller: _phoneController,
                      decoration: const InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' enter your phone number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),

                    // Password field
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),

                    // Register Button
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                         // If the form is valid, proceed with registration logic
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login_view()));

                        }
                      },
                      child: const Text('Register'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
