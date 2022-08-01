import 'package:amazon/repo/models/user.dart';

class UserState {
  final bool isLoading;
  final bool hasError;
  final bool succeeded;
  final String? error;
  final User currentUser;
  final List<User> users;

  const UserState({
    required this.isLoading,
    required this.hasError,
    required this.succeeded,
    required this.error,
    required this.currentUser,
    required this.users,
  });

  const UserState.init({
    this.isLoading = false,
    this.hasError = false,
    this.succeeded = false,
    this.error,
    this.currentUser = const User.init(),
    this.users = const [],
  });

  UserState copyWith({
    bool? isLoading,
    bool? hasError,
    bool? succeeded,
    String? error,
    User? currentUser,
    List<User>? users,
  }) {
    return UserState(
      isLoading: isLoading ?? this.isLoading,
      hasError: hasError ?? this.hasError,
      succeeded: succeeded ?? this.succeeded,
      error: error ?? this.error,
      currentUser: currentUser ?? this.currentUser,
      users: users ?? this.users,
    );
  }

  UserState loadingState() {
    return UserState(
      isLoading: true,
      hasError: false,
      succeeded: false,
      error: error,
      currentUser: currentUser,
      users: users,
    );
  }

  UserState errorState(String? error) {
    return UserState(
      isLoading: false,
      hasError: true,
      succeeded: false,
      error: error ?? this.error,
      currentUser: currentUser,
      users: users,
    );
  }

  UserState successState({
    User? currentUser,
    List<User>? users,
  }) {
    return UserState(
      isLoading: false,
      hasError: false,
      succeeded: true,
      error: null,
      currentUser: currentUser ?? this.currentUser,
      users: users ?? this.users,
    );
  }
}
