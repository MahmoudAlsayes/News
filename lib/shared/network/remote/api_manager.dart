import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:news/models/NewsResponse.dart';
import 'package:news/models/SourcesResponse.dart';
import 'package:news/shared/components/constants.dart';
class ApiManager {
 static Future<SourcesResponse> getSources(String cat) async {
    Uri url = Uri.https(BASE_URL, "/v2/top-headlines/sources",
        {"apiKey":API_KEY , "category" :cat});
    Response response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    SourcesResponse data = SourcesResponse.fromJson(jsonData);
    return data;
  }
  static Future<NewsResponse> getNews(String sourceID , {String q=""})async
  {
    Uri url=Uri.https(BASE_URL, "/v2/everything",
    {
      "apiKey":API_KEY,
      "sources":sourceID,
      "q":q
    });
    http.Response response =await http.get(url);
    var jsonData = jsonDecode(response.body);
    NewsResponse newsResponse=  NewsResponse.fromJson(jsonData);
    return newsResponse;
  }
}
