import 'dart:convert';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:mvc_pattern/model/user.model.dart';
import 'package:mvc_pattern/view-model/signup.viewmodel.dart';

class AccountRepository {
  Future createAccount(SignupViewModel viewModel) async {
    var _jsonFile = await rootBundle.loadString('assets/users.json');
    var _decodedFile = json.decode(_jsonFile)["users"];
    Random random = Random();
    return UserModel.fromMap(_decodedFile[random.nextInt(5)]);
  }
}
