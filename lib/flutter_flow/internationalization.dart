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
      'en': 'Full Name ',
      'es': 'Nombre y apellidos',
    },
    '7eie303p': {
      'en': 'Email',
      'es': 'Correo electrónico',
    },
    'g9vvx4p2': {
      'en': 'Address',
      'es': 'Correo electrónico',
    },
    '43v0n5h3': {
      'en': 'City',
      'es': 'Correo electrónico',
    },
    'dhlglr4w': {
      'en': 'Zip Code',
      'es': 'Correo electrónico',
    },
    'y0x2iagp': {
      'en': 'Phone #',
      'es': 'Correo electrónico',
    },
    '0yr4wc5a': {
      'en': 'Password',
      'es': 'Correo electrónico',
    },
    'za9ywtzy': {
      'en': 'Confirm password',
      'es': 'Correo electrónico',
    },
    'kzxrr9rv': {
      'en': '',
      'es': '',
    },
    'zy2ry5kk': {
      'en': 'I Agree Policies & Uses',
      'es': '',
    },
    'vyno9lfm': {
      'en': '',
      'es': '',
    },
    '1cuxn2hk': {
      'en': 'I Accept Terms & Conditions',
      'es': '',
    },
    'tdg9cgk4': {
      'en': 'Subscribe',
      'es': '',
    },
    'm2shaxw5': {
      'en': 'Home',
      'es': '',
    },
  },
  // userPinCode
  {
    '2tgmv6q4': {
      'en': 'Confirm your Code',
      'es': '',
    },
    'xiikzan7': {
      'en': 'This code helps keep your account safe and secure.',
      'es': '',
    },
    'zvm7m6ds': {
      'en': 'Confirm & Continue',
      'es': '',
    },
    '2arv7owd': {
      'en': 'Enter Pin Code Below',
      'es': '',
    },
    '71xwog5q': {
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
      'en': 'My Barbershop',
      'es': '',
    },
    'ngl2io1i': {
      'en': 'My appointment',
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
    'gteh6ebh': {
      'en': 'Welcome!',
      'es': '',
    },
    'eg0vy79o': {
      'en': 'Find your Barbershop',
      'es': '',
    },
    'lrpdno1s': {
      'en': 'Search',
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
    'ioq5uw0l': {
      'en': 'Barbershop',
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
      'en': 'Book me now!',
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
    'av4p4d9o': {
      'en': 'Corillo',
      'es': '',
    },
  },
  // CalendarUser
  {
    'kr4dcxt0': {
      'en': 'Appointments ',
      'es': '',
    },
    'xfs42v29': {
      'en': 'Citas',
      'es': '',
    },
  },
  // mySettings
  {
    'hh04leqn': {
      'en':
          'Choose what notifcations you want to recieve below and we will update the settings.',
      'es': '',
    },
    'sh36om0w': {
      'en': 'Push Notifications',
      'es': '',
    },
    '52l5usw7': {
      'en':
          'Receive Push notifications from our application on a semi regular basis.',
      'es': '',
    },
    'k712dcm3': {
      'en': 'Email Notifications',
      'es': '',
    },
    '46t7hjqk': {
      'en':
          'Receive email notifications from our marketing team about new features.',
      'es': '',
    },
    'ygdfh0k5': {
      'en': 'Location Services',
      'es': '',
    },
    '8cvg83p5': {
      'en':
          'Allow us to track your location, this helps keep track of spending and keeps you safe.',
      'es': '',
    },
    'hzkroqee': {
      'en': 'Change Changes',
      'es': '',
    },
    'rtp1gtba': {
      'en': 'Settings',
      'es': '',
    },
  },
  // notificationPage
  {
    'ivsou05n': {
      'en': 'Notifications',
      'es': '',
    },
    'abjxtfg2': {
      'en': 'Daily stuff',
      'es': '',
    },
    't8zrsa16': {
      'en': '8',
      'es': '',
    },
    'ihv7lo8y': {
      'en': 'Workouts',
      'es': '',
    },
    'vd1aurc2': {
      'en': 'Upcoming Lessons',
      'es': '',
    },
    'l8yj41gt': {
      'en': '1',
      'es': '',
    },
    '85rv5mv9': {
      'en': 'Lesson Name',
      'es': '',
    },
    'ws1ldfy1': {
      'en': 'A description of your lesson goes here...',
      'es': '',
    },
    '6eh01355': {
      'en': '2',
      'es': '',
    },
    'ua5f71x9': {
      'en': 'Lesson Name',
      'es': '',
    },
    '4ecn2fef': {
      'en': 'A description of your lesson goes here...',
      'es': '',
    },
    '4dyieh7b': {
      'en': '3',
      'es': '',
    },
    '98mko1nb': {
      'en': 'Lesson Name',
      'es': '',
    },
    'pruo9vgk': {
      'en': 'A description of your lesson goes here...',
      'es': '',
    },
    '8o7engxv': {
      'en': '4',
      'es': '',
    },
    '7kswujyq': {
      'en': 'Lesson Name',
      'es': '',
    },
    'bcjwjqak': {
      'en': 'A description of your lesson goes here...',
      'es': '',
    },
    'r5ps86yj': {
      'en': 'Begin Lessons',
      'es': '',
    },
    '5bzyuuf4': {
      'en': 'Home',
      'es': '',
    },
  },
  // Miscellaneous
  {
    'fxxfb7uf': {
      'en':
          '\"BarberosPR\" Would Like To Access the Camera\nThis let you to upload and share photos in your profile and portfolio ',
      'es': '',
    },
    'j2qk69dn': {
      'en':
          '\"BarberosPR\" Would Like To Access Your Photos\nBarberosPR will only upload and share photos you choose.',
      'es': '',
    },
    '5g8foirq': {
      'en':
          'Allow BarberosPR to access your location while you use de app\nBarberosPR helps you to find your favorite barbershop.',
      'es': '',
    },
    'd8vtfvui': {
      'en':
          'BarberosPR Would Like To Send You Push Notifications\nNotifications may include alerts, sounds, icon badges and events.\nThese can be configured in Settings.',
      'es': '',
    },
    'mwtsfc0h': {
      'en': '',
      'es': '',
    },
    'xrqigsf7': {
      'en': '',
      'es': '',
    },
    'zzvjfoav': {
      'en': '',
      'es': '',
    },
    'lb2emvlj': {
      'en': '',
      'es': '',
    },
    'e17kuimf': {
      'en': '',
      'es': '',
    },
    'vkrg1ubi': {
      'en': '',
      'es': '',
    },
    '08d747kf': {
      'en': '',
      'es': '',
    },
    'g6bfka4n': {
      'en': '',
      'es': '',
    },
    'uxds9ui5': {
      'en': '',
      'es': '',
    },
    'lrj1yxyk': {
      'en': '',
      'es': '',
    },
    '3r4w1m3j': {
      'en': '',
      'es': '',
    },
    '7jey9eke': {
      'en': '',
      'es': '',
    },
    '85tqiw5x': {
      'en': '',
      'es': '',
    },
    'f09gwavz': {
      'en': '',
      'es': '',
    },
    '41lquho7': {
      'en': '',
      'es': '',
    },
    '3yjmw1xp': {
      'en': '',
      'es': '',
    },
    'xb1wtw4w': {
      'en': '',
      'es': '',
    },
    '32lnywxr': {
      'en': '',
      'es': '',
    },
    'aickmbnc': {
      'en': '',
      'es': '',
    },
    'yywthmor': {
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
