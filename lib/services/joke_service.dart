import 'package:dio/dio.dart';
import 'package:fetch_jokes/data/dto/joke_dto.dart';
import 'package:fetch_jokes/utils/app_constants.dart';

class JokeService {
  final Dio _dio = Dio();

  // Updated fetchJokes method to accept a category parameter
  Future<List<JokeDto>> fetchJokes({required String category}) async {
    try {
      // Pass the selected joke category to the API request
      final response = await _dio.get(
        '${AppConstants.jokeApiUrl}/$category?amount=5', // Appending the category parameter to the API URL
      );

      // Check if the 'jokes' key is present in the response
      if (response.data['jokes'] != null) {
        return (response.data['jokes'] as List)
            .map((joke) => JokeDto.fromJson(joke))
            .toList();
      }

      return [];
    } catch (e) {
      print("Error fetching jokes: $e");
      return [];
    }
  }
}
