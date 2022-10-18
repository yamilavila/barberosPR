import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
  }) =>
      [enText, esText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.toString());

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // LoginBarberosPR
  {
    'aexmsont': {
      'en': 'Minapp',
      'es': '',
    },
    'wqj074sl': {
      'en': 'Login',
      'es': '',
    },
    'v5xkcsv7': {
      'en': 'Enter your email',
      'es': 'Entra tu correo electrónico ',
    },
    '20meo69k': {
      'en': 'Enter your password',
      'es': 'Entra tu contraseña',
    },
    'a3i82im0': {
      'en': 'Login',
      'es': '',
    },
    'j9f84afm': {
      'en': 'Forgot Password?',
      'es': 'Olvidé la contraseña',
    },
    '1q15nvc4': {
      'en': 'Continue as guest',
      'es': '',
    },
    'a4a0arix': {
      'en': 'Powered by Avilnet, LLC',
      'es': '',
    },
    'wja1bz45': {
      'en': 'Create  Account',
      'es': 'Crea una cuenta',
    },
    't1skacc9': {
      'en': 'New account',
      'es': 'Cuenta nueva',
    },
    'enzn3oal': {
      'en': 'Full Name and Last',
      'es': 'Nombre y apellidos',
    },
    '7eie303p': {
      'en': 'Email',
      'es': 'Correo electrónico',
    },
    'wcp2dczg': {
      'en': 'Phone #',
      'es': 'Teléfono',
    },
    'm2shaxw5': {
      'en': 'Home',
      'es': '',
    },
  },
  // Home
  {
    'q9lp4e77': {
      'en': '[User Name Here]',
      'es': '',
    },
    'epu3h3yz': {
      'en': 'User.name@domainname.com',
      'es': '',
    },
    'twwvn9ff': {
      'en': 'Account Settings',
      'es': '',
    },
    'ngl2io1i': {
      'en': 'Order History',
      'es': '',
    },
    's2o1b77o': {
      'en': 'My Settings',
      'es': '',
    },
    'xn5xyssm': {
      'en': 'My Notifications',
      'es': '',
    },
    'o9m4bbg1': {
      'en': 'Terms of Service',
      'es': '',
    },
    '6igwdazn': {
      'en': 'Log Out',
      'es': '',
    },
    'd5f8c0x1': {
      'en': '[User Name]',
      'es': '',
    },
    'simtkz87': {
      'en': '[username@domain.com]',
      'es': '',
    },
  },
  // Barbers
  {
    'yflkbrn6': {
      'en': 'BarberosPR',
      'es': '',
    },
    'e5077pm2': {
      'en': 'Search town',
      'es': '',
    },
    'iuge4u72': {
      'en': 'Class Name',
      'es': '',
    },
    'bjzq3f8s': {
      'en': '30m | High Intensity | Indoor/Outdoor',
      'es': '',
    },
    'jxcmkrkg': {
      'en': 'Contact',
      'es': '',
    },
    'yeir1qh1': {
      'en': '10:00am',
      'es': '',
    },
    'bzgip204': {
      'en': 'Thursday June 22',
      'es': '',
    },
    'fn4xpxg6': {
      'en': 'Class Name',
      'es': '',
    },
    'uqa1wttk': {
      'en': '30m | High Intensity | Indoor/Outdoor',
      'es': '',
    },
    'nkthp1pz': {
      'en': 'Reserve',
      'es': '',
    },
    '0h4em9a1': {
      'en': '10:00am',
      'es': '',
    },
    'hucaqeii': {
      'en': 'Thursday June 22',
      'es': '',
    },
    'uazdmaon': {
      'en': 'Class Name',
      'es': '',
    },
    '7b5jq2h4': {
      'en': '30m | High Intensity | Indoor/Outdoor',
      'es': '',
    },
    'hlei7ufs': {
      'en': 'Reserve',
      'es': '',
    },
    'ccxwt5jo': {
      'en': '10:00am',
      'es': '',
    },
    'naa5t90i': {
      'en': 'Thursday June 22',
      'es': '',
    },
    '2kay9rg0': {
      'en': 'Class Name',
      'es': '',
    },
    'bs14xzec': {
      'en': '30m | High Intensity | Indoor/Outdoor',
      'es': '',
    },
    'jhh2fp1y': {
      'en': 'Reserve',
      'es': '',
    },
    'rweodmqu': {
      'en': '10:00am',
      'es': '',
    },
    'pgbylex7': {
      'en': 'Thursday June 22',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
