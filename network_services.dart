// String gender = 'male';
// String lang = 'Telugu';
// String text = "ఆది సాయికుమార్ హీరోగా నటించిన ‘శశి’ చిత్రంలోని ఈ పాటను సిద్ శ్రీరామ్ పాడగా.";

// String url = "https://asr.iitm.ac.in/ttsv2/tts";

// payload = json.dumps({
// "input": text,
// "gender": gender,
// "lang": lang,
// "alpha": 1,
// "segmentwise":"True"
// });

// headers = {'Content-Type': 'application/json'}
// response = requests.request("POST", url, headers=headers, data=payload).json();

// audio = response['audio'];
// file_name = "tts.wav" ;
// wav_file = open(file_name,'wb');
// decode_string = base64.b64decode(audio);
// wav_file.write(decode_string);
import 'dart:convert';

import 'package:bank/services/constants.dart';
import 'package:http/http.dart' as http;

class NetworkServices {
  static get() async {
    final Map<String, dynamic> payload = {
      "action": "details",
      "nick_name": "sk"
    };

    final queryString = Uri(queryParameters: payload).query;

    final response = await http.post(
      Uri.parse('http://events.respark.iitm.ac.in:5000/rp_bank_api'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(
        {
          "action": "details",
          "nick_name": "sandeep",
        },
      ),
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print('failed to request api');
    }
  }

  static post() async {
    final headers = {'Content-Type': 'application/json'};
    final data = {
      "action": "register",
      "nick_name": "kusani",
      "full_name": "kusangi",
      "user_name": "kusangi",
      "pin_number": "123456",
      "mob_number": "1234567890",
      "upi_id": "kusngi@rpbank"
    };

    final response = await http.post(Uri.parse(url),
        headers: headers, body: json.encode(data));
    try {
      if (response.statusCode == 200) {
        print(response.statusCode);
      } else {
        print('failed to request api');
      }
    } catch (e) {
      print(e);
    }
  }
}
