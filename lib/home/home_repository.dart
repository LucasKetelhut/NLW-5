import 'dart:convert';

import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/services.dart';

class HomeRepository {
  Future<UserModel> getUser() async {
    final response = await rootBundle.loadString("assets/database/user.json");
    final user = UserModel.fromJson(response);
    return user;
  }

  Future<List<QuizModel>> getQuizes() async {
    final response = await rootBundle.loadString("assets/database/quizes.json");
    final list = jsonDecode(response) as List;
    final quizes = list.map((e) => QuizModel.fromMap(e)).toList();
    return quizes;
  }
}
