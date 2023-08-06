class ClaimedReward {
  int rewardId;
  DateTime claimedAt;

  ClaimedReward(this.rewardId, this.claimedAt);
}

class UserData {
  int points;
  List<ClaimedReward> claimedRewards;

  UserData(this.points, this.claimedRewards);
}
