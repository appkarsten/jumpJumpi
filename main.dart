import 'data/database_repository.dart';
import 'data/mock_database.dart';
import 'models/challenge.dart';
import 'models/user.dart';

void main() {
  DatabaseRepository mockDatabase = MockDatabase();

  //Erster User-Eintrag
  User firstUser = User(
      id: 1,
      name: 'Sanni',
      email: 'sanni@tär.de',
      createdAt: DateTime.now(),
      lastLogin: DateTime.now(),
      role: 'User',
      isVerified: true);
  mockDatabase.addUser(firstUser);
  User secondUser = User(
      id: 2,
      name: 'Tobi',
      email: 'tobi@schnobi.de',
      createdAt: DateTime.now(),
      lastLogin: DateTime.now(),
      role: 'Admin',
      isVerified: true);
  mockDatabase.addUser(secondUser);

  List<User> allUsers = mockDatabase.getUsers();
  List<Challenge> challenges = mockDatabase.getChallenges();

  print('Zeige alle Challenges');
  for (Challenge challenge in challenges) {
    print(challenge.name);
  }

  print('Zeige User Infos');
  for (User user in allUsers) {
    print(user.email);
  }
  mockDatabase.deleteUser();
  print('Erster Userlauf beendet');
  allUsers = mockDatabase.getUsers();
  for (User user in allUsers) {
    print(user.email);
  }
}
