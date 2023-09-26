import 'package:api_examples/services/album.dart';
import 'package:test/test.dart';

void main() {
  group("Album tests", () {
    test("Test album fetch", () async {
      final album = await fetchAlbum();

      expect(album.title, "quidem molestiae enim");
    });
  });
}
