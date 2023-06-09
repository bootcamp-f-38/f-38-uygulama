import 'package:f_38/enums/enums.dart';
import 'package:f_38/models/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/post.dart';
import '../providers/storage_repository_provider.dart';
import '../repository/profile_repository.dart';
import 'auth_controller.dart';

final userProfileControllerProvider =
    StateNotifierProvider<UserProfileController, bool>((ref) {
  final userProfileRepository = ref.watch(userProfileRepositoryProvider);
  final storageRepository = ref.watch(storageRepositoryProvider);
  return UserProfileController(
    userProfileRepository: userProfileRepository,
    storageRepository: storageRepository,
    ref: ref,
  );
});
final getUserPostsProvider = StreamProvider.family((ref, String uid) {
  return ref.read(userProfileControllerProvider.notifier).getUserPosts(uid);
});

final searchUserProvider = StreamProvider.family((ref, String query) {
  return ref.watch(userProfileControllerProvider.notifier).searchUser(query);
});

class UserProfileController extends StateNotifier<bool> {
  final UserProfileRepository _userProfileRepository;
  final Ref _ref;
  final StorageRepository _storageRepository;
  UserProfileController({
    required UserProfileRepository userProfileRepository,
    required Ref ref,
    required StorageRepository storageRepository,
  })  : _userProfileRepository = userProfileRepository,
        _ref = ref,
        _storageRepository = storageRepository,
        super(false);
  Stream<List<Post>> getUserPosts(String uid) {
    return _userProfileRepository.getUserPosts(uid);
  }

  Stream<List<UserModel>> searchUser(String query) {
    return _userProfileRepository.searchUser(query);
  }

  void updateUserBadge(UserBadge badge) async {
    UserModel user = _ref.read(userProvider)!;
    user = user.copyWith(badge: user.badge + badge.badge);

    final res = await _userProfileRepository.updateUserBadge(user);
    res.fold((l) => null,
        (r) => _ref.read(userProvider.notifier).update((state) => user));
  }
}
