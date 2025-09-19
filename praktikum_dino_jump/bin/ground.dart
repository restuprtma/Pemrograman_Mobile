import 'game_object.dart';

class Ground extends GameObject {
  Ground(double x, double y) : super(x, y);

  @override
  void render() {
    print('Rendering Ground...');
  }

  @override
  void update() {
    // Ground doesn't need to update its position, so it can be empty
  }
}