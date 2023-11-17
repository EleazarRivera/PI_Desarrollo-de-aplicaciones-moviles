import 'package:http/http.dart' as http;

class UserServices {


getPoke() async{
var url = Uri.https("https://pokeapi.co/api/v2/pokemon/ditto");
var response = await http.get (url);
print('Response status: ${response.statusCode}');
print('Response body: ${response.body}');


}



}
