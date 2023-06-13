class Rifle {
  Caliber caliber;
  final String? _model;
  int magazineCapacity;

  Rifle(this.caliber, this.magazineCapacity, this._model);

  Rifle.ak47()
      : caliber = Caliber('7.62x49', 49),
        _model = "AK47",
        magazineCapacity = 30;

  Rifle.m1a()
      : caliber = Caliber('7.62x51', 66),
        _model = "M1A",
        magazineCapacity = 10;

  void shoot(var enemyHealth, int damage) {
    if (enemyHealth <= damage) {
      print("Enemy is dead!");
    } else {
      print("Enemy health = ${enemyHealth - damage}");
    }
  }

  void reload(int magazineCapacity) {
    print(
        "The rigfle is reloaded with $magazineCapacity bullets in the magazine");
  }
}

class Caliber {
  String diameter;
  int damage;

  Caliber(this.diameter, this.damage);
}
