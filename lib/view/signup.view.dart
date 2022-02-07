import 'package:flutter/material.dart';
import 'package:mvc_pattern/controller/signup.controll.er.dart';
import 'package:mvc_pattern/view-model/signup.viewmodel.dart';

class SignupView extends StatelessWidget {
  SignupView({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final _controller = new SignupController();

  var viewModel = SignupViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text("Signup"),
                TextFormField(
                  decoration: _buildTextFormDecoration("Name"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Invalid name';
                    }
                  },
                  onSaved: (val) {
                    viewModel.name = val!;
                  },
                ),
                TextFormField(
                  decoration: _buildTextFormDecoration("E-mail"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Invalid e-mail';
                    }
                  },
                  onSaved: (val) {
                    viewModel.email = val!;
                  },
                ),
                TextFormField(
                  decoration: _buildTextFormDecoration("Zip Code"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Invalid zip Code';
                    }
                  },
                  onSaved: (val) {
                    viewModel.zipCode = val!;
                  },
                ),
                TextFormField(
                  decoration: _buildTextFormDecoration("Street"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Invalid street';
                    }
                  },
                  onSaved: (val) {
                    viewModel.street = val!;
                  },
                ),
                TextFormField(
                  decoration: _buildTextFormDecoration("District"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Invalid district';
                    }
                  },
                  onSaved: (val) {
                    viewModel.district = val!;
                  },
                ),
                TextFormField(
                  decoration: _buildTextFormDecoration("Password"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Invalid password';
                    }
                  },
                  onSaved: (val) {
                    viewModel.password = val!;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
                    print(viewModel.name);
                    print(viewModel.district);
                    print(viewModel.password);
                    _controller.createUser(viewModel);
                  },
                  child: const Text("Sign Up"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildTextFormDecoration(String labelText) {
    return InputDecoration(labelText: labelText);
  }
}
