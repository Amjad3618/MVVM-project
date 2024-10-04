import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:mvvm_1/data/app_exeptions.dart';
import 'package:mvvm_1/data/network/baseApiservices.dart';
import 'package:http/http.dart' as http;

class Networkapiservices extends Baseapiservices {
  @override
  Future getGetApiRespnse(String url) async {
    dynamic resoponsejson;
    try {
      final resoponse =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
          resoponsejson = returnResonse(resoponse);
    } on SocketException {
      throw FetchDataException("no internet connection");
    }
    return resoponsejson;
  }

  @override
  Future getPostApiesponse(String url,dynamic data) async {
  dynamic resoponsejson;
    try {
     Response response = await post(
      Uri.parse(url),
      body: data

     ).timeout(const Duration(seconds: 10));
          resoponsejson = returnResonse(response);
    } on SocketException {
      throw FetchDataException("no internet connection");
  
    }
     return resoponsejson;
  }
  dynamic returnResonse (http.Response resoponse) {
    
   switch(resoponse.statusCode)
  {
    case 200:
    
    dynamic resoponsejson = jsonDecode(resoponse.body);

    return resoponsejson;
    case 400:
    throw BadRequestException(resoponse.body);
     case 404:
    throw UnauthorizedException(resoponse.body);
     case 500:
    throw BadRequestException(resoponse.body);
    default:
    throw FetchDataException("Error accured while communicating with server + with status code ${resoponse.statusCode}");
    
      }
  }

}

