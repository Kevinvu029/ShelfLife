import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? welcomeBack(DocumentReference? usersName) {
  // make it where if its a users first time logining in it displays Hello "users name",  and after it says welcome back "users name"
  if (usersName == null) {
    return null; // No user found
  }

  // Assuming we can fetch the user's display name from the DocumentReference
  String userName =
      currentUserDisplayName; // Replace with actual fetching logic

  // Check if it's the user's first time logging in
  bool isFirstTimeLogin = math.Random().nextBool();

  if (isFirstTimeLogin) {
    return 'Hello $userName';
  } else {
    return 'Welcome back $userName';
  }
}

DateTime sevenDayFromNow() {
  // create a function that takes the current date and time and adds seven days to it, so it should return the date seven days from the current one
  return DateTime.now().add(Duration(days: 7));
}

DateTime? getStartOfMonth() {
  // function should return the first of the current month
  return DateTime(DateTime.now().year, DateTime.now().month, 1);
}

DateTime? getEndOfMonth() {
// function should return the end of the current month
// function should return the last day of the current month
  final now = DateTime.now();
  final nextMonth = DateTime(now.year, now.month + 1, 1);
  return nextMonth;
}

double? totalMoneyWasted(List<FoodWasteRecord>? foodWaste) {
  // create a function that takes in a document of food items and sums the price of each item and returns the sum
  if (foodWaste == null || foodWaste.isEmpty) {
    return 0.0; // Return 0 if the list is null or empty
  }

  double total = 0.0;
  for (var item in foodWaste) {
    if (item.hasPrice()) {
      total += item.price; // Sum the price of each item
    }
  }

  return total; // Return the total sum
}

String? nameOfCurrentMonth(DateTime? todaysDate) {
  // create a function that takes in the current date and return the name of the current month
  if (todaysDate == null) {
    return null; // Return null if the date is null
  }
  return DateFormat('MMMM')
      .format(todaysDate); // Return the full name of the current month
}
