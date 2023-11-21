part of 'users_cubit.dart';

abstract class UsersState extends Equatable {
  const UsersState();
}

class UsersInitial extends UsersState {
  @override
  List<Object> get props => [];
}

class UsersLoadingState extends UsersState {
  @override
  List<Object> get props => [];
}

class UsersLoadedState extends UsersState {
  final List<UsersModel> userModel;

  UsersLoadedState(this.userModel);

  @override
  List<Object> get props => [userModel];
}

class UsersErrorState extends UsersState {
  final String errorMessage;

  UsersErrorState(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
