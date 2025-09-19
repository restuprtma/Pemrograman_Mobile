import 'game_object.dart';

class ScoreCounter extends GameObject {
  int score = 0;
  ScoreCounter(double x, double y) : super(x, y);

  void incrementScore(int amount) {
    score += amount;
  }

  @override
  void render() {
    print('Rendering Score Counter. Current score: $score');
  }

  @override
  void update() {
    // Score counter logic can be implemented here
  }
}