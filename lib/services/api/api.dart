import 'package:http/http.dart' as http;

class ApiCalls {
  String kBaseUrl =
      "https://asia-southeast1-marlo-bank-dev.cloudfunctions.net/api_dev/company/6dc9858b-b9eb-4248-a210-0f1f08463658/teams/";
  String? token =
      "eyJhbGciOiJSUzI1NiIsImtpZCI6Ijg3NTNiYmFiM2U4YzBmZjdjN2ZiNzg0ZWM5MmY5ODk3YjVjZDkwN2QiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vbWFybG8tYmFuay1kZXYiLCJhdWQiOiJtYXJsby1iYW5rLWRldiIsImF1dGhfdGltZSI6MTY3MjQ2NTgwMCwidXNlcl9pZCI6IlJoSGdiY1U0cHZNMGR3RE90d1piTlhPOTlRMjMiLCJzdWIiOiJSaEhnYmNVNHB2TTBkd0RPdHdaYk5YTzk5UTIzIiwiaWF0IjoxNjcyNDY1ODAwLCJleHAiOjE2NzI0Njk0MDAsImVtYWlsIjoieGlob2g1NTQ5NkBkaW5lcm9hLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwicGhvbmVfbnVtYmVyIjoiKzkxOTUwMDI5ODc2MiIsImZpcmViYXNlIjp7ImlkZW50aXRpZXMiOnsicGhvbmUiOlsiKzkxOTUwMDI5ODc2MiJdLCJlbWFpbCI6WyJ4aWhvaDU1NDk2QGRpbmVyb2EuY29tIl19LCJzaWduX2luX3Byb3ZpZGVyIjoicGFzc3dvcmQifX0.MGjiD0_dcXB8c8_d9dW8bCsqeew_vDgZW0IxPwVS9gHDKv-b0R8BUjBrkTHcDNr3byeOD-eSP7gENaZwWVJd3h5uxgwPXZarJjXpgxIVIihDJyv7nmK_RK-tAdywHj32D3cpv5aRV9nX-lQC-50p4XpbbsecFixgq8GE77iYwhKMhMbtgSbCUb6aqLGJGrUWAmrJom1jAFvgDxb-OveYYH92h5oZzqRk7v-SUf7S6e0yFwgTd7GkPQ0eL40X-HYD1rs2_BMiWtuQNZ6jhXpnHqCFd_hL-LFKmd5cUwdWt5oBR9_RQxAsuFraqE_gGXn3o8OcalcEXQRxZCsaDHogXQ";
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
