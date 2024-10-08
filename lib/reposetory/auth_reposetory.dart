import 'package:mvvm_1/Res/app_urls.dart';
import 'package:mvvm_1/data/network/baseApiservices.dart';
import 'package:mvvm_1/data/network/networkApiServices.dart';

class AuthReposetory{

  final Baseapiservices _apisevices = Networkapiservices();


  Future<dynamic>  loginApi(dynamic data )async{
try {
  dynamic response = await _apisevices.getPostApiesponse(AppUrls.loginEndpoint, data);
  return response;
// ignore: empty_catches
} catch (e) {

  }}
  Future<dynamic>  registerApi(dynamic data )async{
try {
  dynamic response = await _apisevices.getGetApiRespnse(AppUrls.regisrationEndpoint, data);
  return response;
// ignore: empty_catches
} catch (e) {
 
  }}
}