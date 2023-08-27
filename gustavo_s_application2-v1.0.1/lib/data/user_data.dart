import 'dart:math';

String generateRandomUUID() {
  final Random random = Random();

  // Generate a 128-bit random number.
  final List<int> randomBytes = List<int>.generate(16, (index) => random.nextInt(256));

  // Set the version bits to indicate a version 4 UUID.
  randomBytes[6] = (randomBytes[6] & 0x0F) | 0x40;
  randomBytes[8] = (randomBytes[8] & 0x3F) | 0x80;

  // Convert the random bytes to a hexadecimal string.
  final StringBuffer buffer = StringBuffer();
  for (int i = 0; i < 16; i++) {
    final String hex = randomBytes[i].toRadixString(16).padLeft(2, '0');
    buffer.write(hex);
    if (i == 3 || i == 5 || i == 7 || i == 9) {
      buffer.write('-');
    }
  }

  return buffer.toString();
}

class ClaimedReward {
  int rewardId;
  DateTime claimedAt;
  String code;

  ClaimedReward(this.rewardId, this.claimedAt, this.code);
}

class UserData {
  int points;
  List<ClaimedReward> claimedRewards;

  UserData(this.points, this.claimedRewards);
}
