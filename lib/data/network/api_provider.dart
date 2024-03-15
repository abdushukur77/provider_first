import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_nt_ten/data/models/user_model.dart';
import 'package:http/http.dart' as http;

import '../models/country_model.dart';

class ApiProvider {
  Future<List<CountryModel>> getCountry() async {
    try {
      http.Response response =
          await http.get(Uri.parse("https://restcountries.com/v3.1/all"));

      if (response.statusCode == HttpStatus.ok) {
        debugPrint("AAAAAAAAAAAAAAAAAAAAAAAAA: ${response.statusCode.toString()}");
        // debugPrint("AAAAAAAAAAAAAAAAAAAAAAAAA: ${response.body.toString()}");

        return (jsonDecode(response.body) as List?)
                ?.map((e) => CountryModel.fromJson(e))
                .toList() ??
            [];
      }

    //   if (response.statusCode == 200) {
    //     List<dynamic> data = json.decode(response.body);
    //     return data.map((json) => CountryModel.fromJson(json)).toList();
    //   } else {
    //     throw Exception('Failed to load countries');
    //   }
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
    return [];
  }

   Future<List<UserModel>> getAllUserData() async {
    try {
      http.Response response = await http.get(
        Uri.parse("https://fifth-exam.free.mockoapp.net/users"),
      );
      if (response.statusCode == 200) {
        return (jsonDecode(response.body) as List?)
            ?.map((e) => UserModel.fromJson(e))
            .toList() ??
            [];
      }
    } catch (error) {
      return [];
    }

    return [];
  }

}
