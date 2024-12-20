import '../models/challenge.dart';
import '../models/user.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  List<User> userData = [];
  List<Challenge> challenges = [
    Challenge(1, '50 Jumps', 'try to 50 times as fast as possible'),
    Challenge(2, '100 Jumps', 'try to 100 times as fast as possible'),
    Challenge(3, '30 Squat Jumps', 'try to 30 times as fast as possible'),
    Challenge(4, '60 Squat Jumps', 'try to 60 times as fast as possible'),
    Challenge(5, '20 Rotation Jumps', 'try to 20 times as fast as possible'),
    Challenge(6, '40 Rotation Jumps', 'try to 40 times as fast as possible'),
  ];

  @override
  void addUser(User user) {
    userData.add(user);
  }

  @override
  List<User> getUsers() {
    return userData;
  }

  @override
  void addChallenge(Challenge challenge) {
    challenges.add(challenge);
  }

  @override
  List<Challenge> getChallenges() {
    return challenges;
  }

  @override
  void deleteUser() {
    userData.removeLast();
  }
}
