import 'package:mvc_pattern/repository/account.repository.dart';
import 'package:mvc_pattern/view-model/signup.viewmodel.dart';

class SignupController {
  AccountRepository repository = AccountRepository();

  SignupController() {
    var repository = AccountRepository();
  }
  Future createUser(SignupViewModel viewModel) async {
    var user = await repository.createAccount(viewModel);
    return user;
  }
}
