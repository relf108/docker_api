import 'package:docker_api/docker_api.dart';
import 'package:test/test.dart';

void main() {
  test('Image: run', () {
    var helloWorld = Image(name: 'hello-world');
    var actual = helloWorld.run();

    try{
      helloWorld.run();
    }
    on Exception catch(_,e){
      expect(null, e);
      print(e);
    }

  });
}
