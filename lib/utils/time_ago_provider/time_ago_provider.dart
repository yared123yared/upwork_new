import 'package:complex/utils/time_ago_provider/english.dart';
import 'package:complex/utils/time_ago_provider/language.dart';

String format(DateTime date,
    {String locale = 'en', DateTime clock, bool enableFromNow = false}) {
  final language = _languages[locale] ?? English();
  clock ??= DateTime.now();

  final duration = clock.difference(date);
  var deltaTime = duration.inMilliseconds;
  String pfx, sfx;

  if (enableFromNow && deltaTime < 0) {
    deltaTime = date.isBefore(clock) ? deltaTime : deltaTime.abs();
    pfx = language.prefixFromNow();
    sfx = language.suffixFromNow();
  } else {
    pfx = language.prefixAgo();
    sfx = language.suffixAgo();
  }

  final num SECONDS = deltaTime / 1000;
  final num MINUTES = SECONDS / 60;
  final num HOURS = MINUTES / 60;
  final num DAYS = HOURS / 24;
  final num MONTHS = DAYS / 30;
  final num YEARS = DAYS / 365;

  String res;
  if (SECONDS < 45) {
    res = language.lessThanOneMinute(SECONDS.round());
  } else if (SECONDS < 90) {
    res = language.aboutAMinute(MINUTES.round());
  } else if (MINUTES < 45) {
    res = language.minutes(MINUTES.round());
  } else if (MINUTES < 90) {
    res = language.aboutAnHour(MINUTES.round());
  } else if (HOURS < 24) {
    res = language.hours(HOURS.round());
  } else if (HOURS < 48) {
    res = language.aDay(HOURS.round());
  } else if (DAYS < 30) {
    res = language.days(DAYS.round());
  } else if (DAYS < 60) {
    res = language.aboutAMonth(DAYS.round());
  } else if (DAYS < 365) {
    res = language.months(MONTHS.round());
  } else if (YEARS < 2) {
    res = language.aboutAYear(MONTHS.round());
  } else {
    res = language.years(YEARS.round());
  }

  return [pfx, res, sfx].where((s) => s.isNotEmpty).join(language.delimiter());
}

String formatFull(DateTime date,
    {String locale = 'en', DateTime clock, bool enableFromNow = false}) {
  final language = _languages[locale] ?? English();
  clock ??= DateTime.now();

  final duration = clock.difference(date);
  final seconds = duration.inSeconds % 60;

  if (duration.inSeconds < 1) {
    return language.aboutASecond(0);
  }

  final minutes = duration.inMinutes % 60;
  final hours = duration.inHours % 24;
  final days = duration.inDays % 30;
  final _months = (duration.inDays / 30).floor();
  final months = _months % 12;
  final years = (_months / 12).floor();

  final stringParts = <String>[];

  if (years > 0) {
    stringParts.add(language.years(years));
  }

  if (months > 0) {
    stringParts.add(language.months(months));
  }

  if (days > 0) {
    stringParts.add(language.days(days));
  }

  if (hours > 0) {
    stringParts.add(language.hours(hours));
  }

  if (minutes > 0) {
    stringParts.add(language.minutes(minutes));
  }

  if (seconds > 0) {
    stringParts.add(language.seconds(seconds));
  }

  return stringParts.join(', ');
}

/// Locales/Languages Map, add desired locales by calling
/// setLocale(prefix, language)
/// e.g: for german long form
/// setLocale("de", German());
/// e.g: for german short form
/// setLocale("de_short", German(shortForm: true));
Map<String, Language> _languages = {
  'en': English(),
  'en_short': English(shortForm: true),
};

/// Sets a [locale] with the provided [Language] to be available when
/// using the [format] function.
///
/// Example:
/// ```dart
/// //set locale to german long form
/// setLocale('de', German(shortForm: false));
/// setLocale('de_short', German(shortForm: true));
/// ```
///
/// If you want to define locale message implement [Language] interface
/// with the desired messages
///
void setLocale(String locale, Language language) {
  _languages[locale] = language;
}
