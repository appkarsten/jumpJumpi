class Challenge {
  int id;
  String name;
  String description;
  Challenge(this.id, this.name, this.description);

  describe() {
    print(description);
  }
}
