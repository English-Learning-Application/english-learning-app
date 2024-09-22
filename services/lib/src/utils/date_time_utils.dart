import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import '../../services.dart';

class DateTimeUtils {
  DateTimeUtils._();

  static String formattedDifferenceInHourMinuteSecond({
    required DateTime startTime,
    required DateTime endTime,
  }) {
    Duration difference = endTime.difference(startTime);

    int hours = difference.inHours;
    int minutes = difference.inMinutes.remainder(60);
    int seconds = difference.inSeconds.remainder(60);

    String formattedDifference = '${hours.toString().padLeft(2, '0')}:'
        '${minutes.toString().padLeft(2, '0')}:'
        '${seconds.toString().padLeft(2, '0')}';
    return formattedDifference;
  }

  static String formattedDurationToHHMMSS(Duration duration) {
    int hours = duration.inHours;
    int minutes = duration.inMinutes.remainder(60);
    int seconds = duration.inSeconds.remainder(60);

    String formattedDifference = '${hours.toString().padLeft(2, '0')}:'
        '${minutes.toString().padLeft(2, '0')}:'
        '${seconds.toString().padLeft(2, '0')}';
    return formattedDifference;
  }

  static int daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);

    return (to.difference(from).inHours / 24).round();
  }

  static int secondsBetween(DateTime from, DateTime to) {
    return to.difference(from).inSeconds;
  }

  static int timezoneOffset() {
    return DateTime.now().timeZoneOffset.inHours;
  }

  static DateTime toLocalFromTimestamp({required int utcTimestampMillis}) {
    return DateTime.fromMillisecondsSinceEpoch(
      utcTimestampMillis,
      isUtc: true,
    ).toLocal();
  }

  static DateTime toUtcFromTimestamp({required int utcTimestampMillis}) {
    return DateTime.fromMillisecondsSinceEpoch(
      utcTimestampMillis,
      isUtc: false,
    ).toUtc();
  }

  static DateTime startTimeOfDate() {
    final now = DateTime.now();

    return DateTime(now.year, now.month, now.day);
  }

  static DateTime? toDateTime(String dateTimeString, {bool isUtc = false}) {
    final dateTime = DateTime.tryParse(dateTimeString);
    if (dateTime != null) {
      if (isUtc) {
        return DateTime.utc(
          dateTime.year,
          dateTime.month,
          dateTime.day,
          dateTime.hour,
          dateTime.minute,
          dateTime.second,
          dateTime.millisecond,
          dateTime.microsecond,
        );
      }
      return dateTime;
    }
    return null;
  }

  static DateTime? toNormalizeDateTime(String dateTimeString,
      {bool isUtc = false}) {
    final dateTime = DateTime.tryParse('-123450101 $dateTimeString');
    if (dateTime != null) {
      if (isUtc) {
        return DateTime.utc(
          dateTime.year,
          dateTime.month,
          dateTime.day,
          dateTime.hour,
          dateTime.minute,
          dateTime.second,
          dateTime.millisecond,
          dateTime.microsecond,
        );
      }
      return dateTime;
    }
    return null;
  }

  static DateTime? tryParse({
    String? date,
    String? format,
    String locale = LocaleConstants.defaultLocale,
  }) {
    if (date == null) {
      return null;
    }

    if (format == null) {
      return DateTime.tryParse(date);
    }

    final DateFormat dateFormat = DateFormat(format, locale);
    try {
      return dateFormat.parse(date);
    } catch (e) {
      return null;
    }
  }
}

extension DateTimeExtensions on DateTime {
  String toStringWithFormat(String format) {
    return DateFormat(format).format(this);
  }

  DateTime get lastDateOfMonth => DateTime(year, month + 1, 0);
}

extension DateTimeTimezoneExtension on DateTime {
  Map<String, tz.Location> get getTimeZoneDatabase {
    tz.initializeTimeZones();
    return tz.timeZoneDatabase.locations;
  }

  int _getESTtoUTCDifference(String locationName) {
    tz.initializeTimeZones();
    final locationNY = tz.getLocation(locationName);
    final now = tz.TZDateTime.now(locationNY);

    return now.timeZoneOffset.inHours;
  }

  DateTime toESTZone(String locationName) {
    DateTime result = toUtc();

    result = result.add(Duration(hours: _getESTtoUTCDifference(locationName)));
    return result;
  }

  DateTime fromESTZone(String locationName) {
    DateTime result =
        subtract(Duration(hours: _getESTtoUTCDifference(locationName)));
    String dateTimeAsIso = result.toIso8601String();

    dateTimeAsIso +=
        dateTimeAsIso.characters.last.equalsIgnoreCase('Z') ? '' : 'Z';

    result = DateTime.parse(dateTimeAsIso);
    return result.toLocal();
  }
}
