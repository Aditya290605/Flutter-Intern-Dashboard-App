import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/user.dart';
import '../data/mock_data.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthLoginRequested>(_onLoginRequested);
    on<AuthSignUpRequested>(_onSignUpRequested);
    on<AuthLogoutRequested>(_onLogoutRequested);
  }

  Future<void> _onLoginRequested(
    AuthLoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());

    // Simulate API call delay
    await Future.delayed(const Duration(seconds: 1));

    // Mock authentication - accept any email/password
    if (event.email.isNotEmpty && event.password.isNotEmpty) {
      emit(const AuthAuthenticated(user: MockData.currentUser));
    } else {
      emit(const AuthError(message: 'Please enter valid credentials'));
    }
  }

  Future<void> _onSignUpRequested(
    AuthSignUpRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());

    // Simulate API call delay
    await Future.delayed(const Duration(seconds: 1));

    // Mock sign up - accept any valid inputs
    if (event.name.isNotEmpty &&
        event.email.isNotEmpty &&
        event.password.isNotEmpty) {
      emit(const AuthAuthenticated(user: MockData.currentUser));
    } else {
      emit(const AuthError(message: 'Please fill all fields'));
    }
  }

  Future<void> _onLogoutRequested(
    AuthLogoutRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthInitial());
  }
}
