import 'package:blog/base/get/getx_controller_inject.dart';
import 'package:blog/model/request_register.dart';
import 'package:blog/util/save/sp_util.dart';

/// @class : AboutController
/// @date : 2021/08/25
/// @name : jhf
/// @description :关于我们 控制器层
class AboutController extends BaseGetController {
  ///用户信息
  late UserEntity userInfo;

  @override
  void onInit() {
    super.onInit();
    var info = SpUtil.getUserInfo();
    if (info != null) {
      userInfo = info;
      update();
    }
  }
}
