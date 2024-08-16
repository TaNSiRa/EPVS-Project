import 'package:flutter/material.dart';
import '../page/page0.dart';

String token = '';
Widget CuPage = const Page0();
int CuPageLV = 0;

class USERDATA {
  static int UserLV = 0;
  static String NAME = '';
  static String ID = '';
  static String SECTION = '';
  static String BRANCH = '';
  static String INSMASTER = '';
  static String ACTION = '';
  static String BRANCHNUMBER = '';
  static String PLANT = '';
  static String PLANTNUMBER = '';
}

class logindata {
  static bool isControl = false;
  static String userID = '';
  static String userPASS = '';
}

String server = 'http://172.23.10.40:16714/';
String server2 = 'http://172.23.10.34:14090/';
