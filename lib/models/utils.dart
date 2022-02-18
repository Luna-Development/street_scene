import 'car_model.dart';

class Utils {
  static List<ShowCars> getShowCars() {
    return [
      ShowCars(
        name: 'Ryans CAR',
        model: '335i',
        imgName: '240sx',
      ),
      ShowCars(
        name: 'Shawns CAR',
        model: 'e90',
        imgName: 'bmw_e90',
      ),
      ShowCars(
        name: 'Meows CAR',
        model: 'Rx7',
        imgName: 'rx7',
      ),
      ShowCars(
        name: 'Kilos CAR',
        model: 'MK3',
        imgName: 'supra_mk3',
      ),
    ];
  }
}
