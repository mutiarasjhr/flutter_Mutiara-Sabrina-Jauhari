import 'package:storage/model/model_food.dart';
import 'package:test/test.dart';
import 'package:storage/model/api/api.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([FoodApi])
void main() {
  group(FoodApi, () {
    test('get all food returns data', () async {
      when(FoodApi.getAllFood()).thenAnswer(
        (_) async => <FoodModel>[
          FoodModel(id: 1, name: 'Bakso'),
        ],
      );
      var food = await FoodApi.getAllFood();
      expect(food.isNotEmpty, true);
    });
  });
}
