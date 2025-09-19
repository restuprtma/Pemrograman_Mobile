import 'dino.dart';
import 'ground.dart';
import 'cactus.dart';
import 'bird.dart';
import 'score_counter.dart';
import 'game_object.dart';
import 'obstacle.dart';

void main(){
  var dino = Dino(0, 0);
  var cactus = Cactus(10, 0);
  var ground = Ground(0, -1);
  var bird = Bird(20, 2);
  var scoreCounter = ScoreCounter(0, 5);

  List<GameObject> gameObjects = [dino, ground, cactus, bird, scoreCounter];

  for(var obj in gameObjects){
    obj.update();
    obj.render();
  }

  dino.jump();
  scoreCounter.incrementScore(100);
  scoreCounter.render();
}