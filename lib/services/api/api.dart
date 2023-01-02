import 'package:http/http.dart' as http;

class ApiCalls {
  String kBaseUrl =
      "https://asia-southeast1-marlo-bank-dev.cloudfunctions.net/api_dev/company/6dc9858b-b9eb-4248-a210-0f1f08463658/teams/";
  String? token =
      "eyJhbGciOiJSUzI1NiIsImtpZCI6Ijg3NTNiYmFiM2U4YzBmZjdjN2ZiNzg0ZWM5MmY5ODk3YjVjZDkwN2QiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vbWFybG8tYmFuay1kZXYiLCJhdWQiOiJtYXJsby1iYW5rLWRldiIsImF1dGhfdGltZSI6MTY3MjYzNTM3NywidXNlcl9pZCI6IlJoSGdiY1U0cHZNMGR3RE90d1piTlhPOTlRMjMiLCJzdWIiOiJSaEhnYmNVNHB2TTBkd0RPdHdaYk5YTzk5UTIzIiwiaWF0IjoxNjcyNjM1Mzc3LCJleHAiOjE2NzI2Mzg5NzcsImVtYWlsIjoieGlob2g1NTQ5NkBkaW5lcm9hLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwicGhvbmVfbnVtYmVyIjoiKzkxOTUwMDI5ODc2MiIsImZpcmViYXNlIjp7ImlkZW50aXRpZXMiOnsicGhvbmUiOlsiKzkxOTUwMDI5ODc2MiJdLCJlbWFpbCI6WyJ4aWhvaDU1NDk2QGRpbmVyb2EuY29tIl19LCJzaWduX2luX3Byb3ZpZGVyIjoicGFzc3dvcmQifX0.UzugFHNdR57VLAbUSAyaIwzIV76D2kAMP8osPtgLdpUEX3hhEIUE5MxrakMZ2kiOqK2RU0r0Fjd0p55wOdG3QWc6ZIRsD62PQMeob8UoOO2nFS5hWo7pXkQuEqo6xxG5s8DeOavnSb0sZ2wtFpQcY9lUxT9I2_9v4zufSXg-l-ZVZNdx_WVSvVVFi_5c_HuA8M6g5GbLTJ4ytLlzvgMlGIT02LIbav5Ig7ijMRJm5Hg70GTaURjahiu7N_vl8nSimUR7BZfjMlpHjs2LyiJu2ewCg3kISv03QYL3eTmBVBLlo1J3DwDrGrosbzzfXnq-RFGMtsNG0esigMQdUhO6QQ";
  Future<http.Response> getInvites() async {
    try {
      var fullUrl = kBaseUrl;
      var response =
          await http.get(Uri.parse(fullUrl), headers: {'authToken': '$token'});

      return response;
    } catch (e) {
      throw "Error";
    }
  }
  /////////////// The response is giving like you don't have permission for inviting people"////////////////////
  ///
//   Future<http.Response> postInvite()async{
// try {
//       var fullUrl = kBaseUrl;
//       var response =
//           await http.post(Uri.parse(fullUrl), headers: {'authToken': '$token'});

//       return response;
//     } catch (e) {
//       throw "Error";
//     }
//   }
}
