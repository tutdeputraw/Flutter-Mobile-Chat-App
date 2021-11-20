import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app/core/helpers/_helpers.dart';
import 'package:flutter_chat_app/core/models/_model.dart';
import 'package:flutter_chat_app/core/services/_service.dart';
import 'package:flutter_chat_app/view/screens/_screen.dart';
import 'package:flutter_chat_app/view/widgets/_widget.dart';
import 'package:flutter_chat_app/view/widgets/search_bar.dart';
import 'package:provider/provider.dart';
import 'package:search_page/search_page.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part '../../view/screens/sign_in_screen/sign_in_screen_provider.dart';

part '../../view/screens/sign_up_screen/sign_up_screen_provider.dart';

part 'user_state_provider.dart';

part '../../view/screens/_init_screen/screen_provider.dart';

part '../../view/screens/profile_screen/profile_screen_provider.dart';

part '../../view/screens/chat_list_screen/chat_list_screen_provider.dart';

part 'websocket_provider.dart';

part '../../view/screens/friends_screen/friend_screen_provider.dart';

part '../../view/screens/chat_screen/chat_screen_provider.dart';

part 'friend_provider.dart';
