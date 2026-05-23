import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/auth_service.dart';

final authServiceProvider = Provider((ref) => AuthService());

/// Auth state provider - stream of user
final authStateProvider = StreamProvider<User?>((ref) {
  return ref.watch(authServiceProvider).authStateChanges;
});

/// Current user provider
final currentUserProvider = Provider<User?>((ref) {
  return ref.watch(authServiceProvider).currentUser;
});

/// Auth status provider
final isAuthenticatedProvider = Provider<bool>((ref) {
  return ref.watch(authServiceProvider).isAuthenticated;
});
