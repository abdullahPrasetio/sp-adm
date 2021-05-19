import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sp_adm_new/controllers/services.dart';
import 'package:sp_adm_new/models/models.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());
  Future<void> signIn(String email, String password) async {
    ApiReturnValue result = await UserServices.signIn(email, password);

    if (result.value != null) {
      emit(UserLoaded(result.value));
    } else {
      emit(UserLoadingFailed(result.message));
    }
  }

  Future<void> getProfile(String token) async {
    ApiReturnValue result = await UserServices.getProfile(token);
    if (result.value != null) {
      emit(UserLoaded(result.value));
    } else {
      emit(UserLoadingFailed(result.message));
    }
  }

  Future<String> signUp(User user, String spadmKey) async {
    ApiReturnValue result = await UserServices.signUp(user, spadmKey);

    return result.message;
  }
}
