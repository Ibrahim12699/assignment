import 'package:assignment/src/features/auth/data/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.idle() = Idle<T>;

  const factory HomeState.addedUser() = AddedUser<T>;

  const factory HomeState.usersLoaded(List<User> users) = UsersLoaded<T>;
}
