import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sp_adm_new/models/models.dart';
import 'package:sp_adm_new/shared/shared.dart';
part 'user_service.dart';
part 'merchandise_services.dart';
part 'program_service.dart';
part 'complaint_service.dart';

String baseURL = "https://sp-adm.com/";
String baseURLApi = baseURL + 'api/';
