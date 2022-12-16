import 'package:shared_preferences/shared_preferences.dart';
import '../utils/export.dart';

class LocalStorage extends GetxService {
  static SharedPreferences? sharedPreferences;

  static Future<LocalStorage?> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return LocalStorage();
  }

  static clearAllData() => sharedPreferences!.clear();

  // static BaseResponse getUser() {
  //   var response = BaseResponse(
  //     statusCode: null,
  //     message: "Get user in local fail !",
  //     data: null,
  //     statusAction: StatusAction.failure,
  //   );
  //   try {
  //     var userString =
  //         sharedPreferences!.getString(AppString.sharedReferenceUser);
  //     // log("User string get in local >>>>> $userString");
  //     if (userString == null) {
  //       response.message == "User in local is empty !";
  //     } else {
  //       Map<String, dynamic> userMap = jsonDecode(userString);
  //       // log("User map get in local >>>>> $userMap");
  //       // userMap.
  //       user_entity.User user = user_entity.User.fromJson(userMap, false);
  //       response.data = user;
  //       response.message = "Get user in local success !";
  //       response.statusAction = StatusAction.success;
  //     }
  //   } catch (e) {
  //     response.message = e.toString();
  //   }
  //   return response;
  // }

  // static BaseResponse setUser(user_entity.User user) {
  //   var response = BaseResponse(
  //     statusCode: null,
  //     message: "Set user in local fail !",
  //     data: null,
  //     statusAction: StatusAction.failure,
  //   );
  //   try {
  //     var encodeResponse = jsonEncode(user.toMap());
  //     // log("$encodeResponse RESPONSE NE");
  //     sharedPreferences!.setString(
  //       AppString.sharedReferenceUser,
  //       encodeResponse,
  //     );

  //     response.message = "Set user in local success !";
  //     response.statusAction = StatusAction.success;
  //     // log("${tmp.createdAt} SAVE LOCAL");
  //   } catch (e) {
  //     response.message = e.toString();
  //   }
  //   return response;
  // }
}
