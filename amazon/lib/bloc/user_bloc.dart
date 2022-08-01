import 'package:amazon/bloc/form_validator_mixin.dart';
import 'package:amazon/bloc/user_state.dart';
import 'package:amazon/repo/app_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Cubit<UserState> with FormValidatorMixin {
  final AppRepository _repo;
  UserBloc(AppRepository repo)
      : _repo = repo,
        super(const UserState.init());

  void resetState() {
    emit(const UserState.init());
  }

  /// To set the user name call this function
  String? validateName(String? userName) => validateUserName(userName);
  void setName(String? userName) {
    emit(state.successState(
      currentUser: state.currentUser.copyWith(userName: userName?.trim()),
    ));
  }

  /// To set the password call this function
  String? validatePass(String? password) => validatePassword(password);
  void setPassword(String? password) {
    emit(state.successState(
      currentUser: state.currentUser.copyWith(password: password?.trim()),
    ));
  }

// CAll API
  void signUp() async {
    try {
      emit(state.loadingState());
      final result = await _repo.signupUser(state.currentUser);
      emit(state.successState(
        currentUser: state.currentUser.copyWith(isSignedIn: result),
      ));
    } catch (e) {
      emit(state.errorState('$e'));
    }
  }

  /// Call API
  void signIn() async {
    try {
      emit(state.loadingState());
      final user = await _repo.signInUser(state.currentUser);
      emit(state.successState(currentUser: user));
    } catch (e) {
      emit(state.errorState('$e'));
    }
  }

  void signOut() {
    emit(state.loadingState());
    final result = _repo.signOutUser(state.currentUser.id);
    emit(state.copyWith(
        currentUser: state.currentUser.copyWith(isSignedIn: result)));
  }
}
