import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app/core/controller/_controller.dart';
import 'package:flutter_chat_app/main.dart';
import 'package:flutter_chat_app/view/screens/_screen.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_chat_app/core/models/_model.dart';
import 'package:flutter_chat_app/core/services/_service.dart';
import 'package:sqflite/sqflite.dart';
import 'package:web_socket_channel/io.dart';

part 'user_session_helper.dart';

part 'sign_out_helper.dart';

part 'sign_in_helper.dart';

part 'sign_up_helper.dart';

part 'websocket.dart';

part 'sqlite.dart';

part 'friend_sqlite_helper.dart';

part 'api_helper.dart';