import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_chat_app/view/widgets/search_bar.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:get/get.dart';
import 'package:flutter_chat_app/core/helpers/_helpers.dart';
import 'package:flutter_chat_app/view/screens/_screen.dart';
import 'package:flutter_chat_app/core/models/_model.dart';
import 'package:search_page/search_page.dart';
import 'package:flutter_chat_app/core/services/_service.dart';
import 'package:web_socket_channel/io.dart';

part 'websocket_controller.dart';

part '../../view/screens/sign_in_screen/sign_in_screen_controller.dart';

part '../../view/screens/sign_up_screen/sign_up_screen_controller.dart';

part 'user_state.dart';

part '../../view/screens/_init_screen/init_screen_controller.dart';

part '../../view/screens/chat_list_screen/chat_list_screen_controller.dart';

part '../../view/screens/friends_screen/friend_screen_controller.dart';

part 'friend_controller.dart';

part '../../view/screens/profile_screen/profile_screen_controller.dart';

part '../../view/screens/chat_screen/chat_screen_controller.dart';

part 'chat_controller.dart';

part 'user_controller.dart';
