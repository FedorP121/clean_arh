import 'dart:convert';

import 'package:clean_arh/src/features/data/models/tovars_bitrix_model.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

abstract interface class IDataSources {
  Future<TovarsBitrixModel> postTovarsBitrix();
  Future<TovarsBitrixModel> postOrgersUser();
}

@injectable
class UserDataSources implements IDataSources {
  @override
  Future<TovarsBitrixModel> postTovarsBitrix() async {
    final requestBody = {
      'catalog_id': '4',
    };

    final response = await http.post(
      Uri.parse('http://dev1.srv.company/rest/vse-tovari-iz-kategorii/'),
      body: requestBody,
    );
    return TovarsBitrixModel.fromJson(jsonDecode(response.body));
  }

  @override
  Future<TovarsBitrixModel> postOrgersUser() {
    throw UnimplementedError();
  }
}
