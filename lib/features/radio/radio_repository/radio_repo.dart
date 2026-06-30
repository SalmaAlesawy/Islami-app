import 'package:dartz/dartz.dart';
import 'package:islamiapp/core/api/dio_consumer.dart';
import 'package:islamiapp/core/api/end_points.dart';
import 'package:islamiapp/features/radio/radio_models/radio_model.dart';

class RadioRepo {
  final DioConsumer dioConsumer;
  RadioRepo({required this.dioConsumer});
  Future<Either<String, List<Radios>>> getRadios() async {
    try {
      final response = await dioConsumer.get(EndPoints.radios);
      final List data = response['radios'];
      final List<Radios> radios =
          data.map((e) => Radios.fromJson(e as Map<String, dynamic>)).toList();
      print("Radios:$radios");
      return Right(radios);
    } catch (e) {
      print("Error Repo ${e.toString()}");
      return Left(e.toString());
    }
  }
}
