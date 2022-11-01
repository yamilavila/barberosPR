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
    '7eie303p': {
      'en': 'Email',
      'es': 'Correo electrónico',
    },
    'grnedyji': {
      'en': 'Confirm Email',
      'es': 'Correo electrónico',
    },
    'y0x2iagp': {
      'en': 'Phone #',
      'es': 'Correo electrónico',
    },
    'paonuac0': {
      'en': 'Password',
      'es': '',
    },
    '0yr4wc5a': {
      'en': 'Create a Password',
      'es': 'Correo electrónico',
    },
    'mlxe8m20': {
      'en': 'Confirm Password',
      'es': '',
    },
    'vjulvwdh': {
      'en': 'Confirm Password',
      'es': 'Correo electrónico',
    },
    'kzxrr9rv': {
      'en': '',
      'es': '',
    },
    'zy2ry5kk': {
      'en': 'I Agree Policy & Use',
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
      'en': 'Submit',
      'es': '',
    },
    'm2shaxw5': {
      'en': 'Home',
      'es': '',
    },
  },
  // barberHome
  {
    '57jozmzq': {
      'en': 'Type your Name',
      'es': '',
    },
    'nr7fp1oq': {
      'en': 'Write a quote.',
      'es': '',
    },
    'gteh6ebh': {
      'en': 'Welcome!',
      'es': '',
    },
    'eg0vy79o': {
      'en': 'To your Barbershop',
      'es': '',
    },
    'xn5xyssm': {
      'en': 'Clients Notifications',
      'es': '',
    },
    'ngl2io1i': {
      'en': 'My Barbershop',
      'es': '',
    },
    's2o1b77o': {
      'en': 'Settings',
      'es': '',
    },
    'o9m4bbg1': {
      'en': 'Terms of Service',
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
      'en': 'Home',
      'es': '',
    },
  },
  // Barbers
  {
    '9a9mphyr': {
      'en': 'Press logo to go back',
      'es': '',
    },
    'o68d9d90': {
      'en': 'Welcome to',
      'es': '',
    },
    'sduejc5o': {
      'en': 'BarberosPR',
      'es': '',
    },
    'tjcp6gj5': {
      'en': 'This is where \"la crema\"  runs the show.',
      'es': '',
    },
    'iuge4u72': {
      'en': 'Book me!',
      'es': '',
    },
    'bjzq3f8s': {
      'en': 'Barbershop Services',
      'es': '',
    },
    'yeir1qh1': {
      'en': 'From 8:00am',
      'es': '',
    },
    'x1ndh5h1': {
      'en': 'To 6:00pm',
      'es': '',
    },
    'bzgip204': {
      'en': 'Thursday June 22',
      'es': '',
    },
    '2qrinr4c': {
      'en': 'Book me!',
      'es': '',
    },
    'wpk3rtya': {
      'en': 'Servicies: Moderm Haircut, Beard and Eyebrowns.',
      'es': '',
    },
    'av4p4d9o': {
      'en': 'El Corillo',
      'es': '',
    },
  },
  // AppointmentPage
  {
    'ijo87p42': {
      'en': 'Appointments',
      'es': '',
    },
    'm8vpl555': {
      'en': 'Select date',
      'es': '',
    },
    'h4duvmf4': {
      'en': 'Appointment by: ',
      'es': '',
    },
    'lhu307si': {
      'en': 'Set',
      'es': '',
    },
    'dq7qi2sy': {
      'en': 'Appointments',
      'es': '',
    },
  },
  // barberSettings
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
    '4cnhq6em': {
      'en': 'Log Out',
      'es': '',
    },
    'rtp1gtba': {
      'en': 'Settings',
      'es': '',
    },
  },
  // haircutSchedule
  {
    '3gdmd45p': {
      'en': 'Appointment Form',
      'es': '',
    },
    'pw8e3yal': {
      'en': 'Choose your style',
      'es': '',
    },
    '9fliv924': {
      'en': 'Yaruk',
      'es': '',
    },
    'x3hevjlg': {
      'en': 'Schedule:',
      'es': '',
    },
    'hjmflt73': {
      'en': 'Sunday:',
      'es': '',
    },
    'hijqbn4c': {
      'en': 'Close',
      'es': '',
    },
    'fumjs8s9': {
      'en': 'TO',
      'es': '',
    },
    'irai9p9e': {
      'en': 'Close',
      'es': '',
    },
    'iki2775u': {
      'en': 'Monday:',
      'es': '',
    },
    '392t7hg5': {
      'en': 'Close',
      'es': '',
    },
    '8vzzoh6j': {
      'en': 'TO',
      'es': '',
    },
    '7gqbqsfc': {
      'en': 'Close',
      'es': '',
    },
    'scsx7sj6': {
      'en': 'Tuesday:',
      'es': '',
    },
    'o6hb2ivu': {
      'en': '8:00',
      'es': '',
    },
    'dbi4do62': {
      'en': 'TO',
      'es': '',
    },
    'nvug421h': {
      'en': '6:00',
      'es': '',
    },
    'atn46lv3': {
      'en': 'Wendnesday:',
      'es': '',
    },
    '0v6icxdr': {
      'en': '8:00',
      'es': '',
    },
    'rb784w6l': {
      'en': 'TO',
      'es': '',
    },
    'n8zii51h': {
      'en': '6:00',
      'es': '',
    },
    'ei72vss4': {
      'en': 'Thursday:',
      'es': '',
    },
    'kke81knp': {
      'en': '9:00',
      'es': '',
    },
    'q7pfdlsj': {
      'en': 'TO',
      'es': '',
    },
    'oh0a6cdx': {
      'en': '7:00',
      'es': '',
    },
    'z80u6wr3': {
      'en': 'Friday:',
      'es': '',
    },
    'tueqq5sp': {
      'en': 'Open',
      'es': '',
    },
    'vzdi97mr': {
      'en': 'TO',
      'es': '',
    },
    'ssdfv4fb': {
      'en': 'Close',
      'es': '',
    },
    'wiavoqwd': {
      'en': 'Saturday:',
      'es': '',
    },
    '4t8ak9ib': {
      'en': 'Open',
      'es': '',
    },
    'rt27o25b': {
      'en': 'TO',
      'es': '',
    },
    'vb7o8xxz': {
      'en': 'Close',
      'es': '',
    },
    'spcmoclz': {
      'en': 'Book a Seat',
      'es': '',
    },
    'p08rf6y7': {
      'en': 'Wait for confirmation',
      'es': '',
    },
    'q7n7iwf6': {
      'en': 'Name',
      'es': '',
    },
    '2cntztfy': {
      'en': 'Type your name',
      'es': '',
    },
    '78qh8xvz': {
      'en': 'Enter description here...',
      'es': '',
    },
    '7gbg97j3': {
      'en': 'Appointment ',
      'es': '',
    },
    'smhmu8zo': {
      'en': 'Cash',
      'es': '',
    },
    'r6cp9cbb': {
      'en': 'Cash',
      'es': '',
    },
    'b44zkc35': {
      'en': 'ATH Movil',
      'es': '',
    },
    'iz0fad02': {
      'en': 'Credit Card',
      'es': '',
    },
    'p1k522p2': {
      'en': 'Check',
      'es': '',
    },
    'qgrvq2xs': {
      'en': 'Please select...',
      'es': '',
    },
    'n2rdii0j': {
      'en': 'Time: ',
      'es': '',
    },
    'i36ucxvn': {
      'en': '8',
      'es': '',
    },
    'l123bp42': {
      'en': '00',
      'es': '',
    },
    'h812fwet': {
      'en': 'am',
      'es': '',
    },
    'a461gp0n': {
      'en': 'Send',
      'es': '',
    },
    '83bdy5u2': {
      'en':
          'By clicking the button it sends a notification to the barber. Wait for his booking confirmation.',
      'es': '',
    },
    'b615xac9': {
      'en': 'Field is required',
      'es': '',
    },
    'vke3sf0k': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'haveawgu': {
      'en': 'Field is required',
      'es': '',
    },
    'nw7j1rz6': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
  },
  // BarbershopUser
  {
    'uzobrsjr': {
      'en': 'Daily Tool',
      'es': '',
    },
    't1094cn7': {
      'en': 'Operation',
      'es': '',
    },
    'dn7pl1j8': {
      'en': 'On what time you start and end services?',
      'es': '',
    },
    'w6x536oc': {
      'en': 'Workdays',
      'es': '',
    },
    'rz5npuk6': {
      'en': 'Click for \nOpen',
      'es': '',
    },
    '4lll7dqy': {
      'en': 'Monday',
      'es': '',
    },
    'vamrd7xp': {
      'en': '01',
      'es': '',
    },
    '204kae6w': {
      'en': '02',
      'es': '',
    },
    '1g5kk3dy': {
      'en': '03',
      'es': '',
    },
    'gh1zxyld': {
      'en': '04',
      'es': '',
    },
    'm3dx5f81': {
      'en': '05',
      'es': '',
    },
    'by9axvni': {
      'en': '06',
      'es': '',
    },
    'refbjwdb': {
      'en': '07',
      'es': '',
    },
    'zynaoiax': {
      'en': '08',
      'es': '',
    },
    'm65wwi9q': {
      'en': '09',
      'es': '',
    },
    'bp87belt': {
      'en': '10',
      'es': '',
    },
    'euut01gq': {
      'en': '11',
      'es': '',
    },
    '9tf1abdj': {
      'en': '12',
      'es': '',
    },
    'd7f6vdnt': {
      'en': 'Close',
      'es': '',
    },
    'fcv3alcn': {
      'en': 'am',
      'es': '',
    },
    '7ef0ouzi': {
      'en': 'pm',
      'es': '',
    },
    'j4mry6ll': {
      'en': 'TO',
      'es': '',
    },
    'tg707y5l': {
      'en': '01',
      'es': '',
    },
    'qfpewcdk': {
      'en': '02',
      'es': '',
    },
    'neh1rd3y': {
      'en': '03',
      'es': '',
    },
    'ey1xyxof': {
      'en': '04',
      'es': '',
    },
    'gyljq6p2': {
      'en': '05',
      'es': '',
    },
    'eordvb0w': {
      'en': '06',
      'es': '',
    },
    'jfv9lodf': {
      'en': '07',
      'es': '',
    },
    'g6bvs91a': {
      'en': '08',
      'es': '',
    },
    '5atgrffd': {
      'en': '09',
      'es': '',
    },
    'n5uy8ugv': {
      'en': '10',
      'es': '',
    },
    'wgawi3cf': {
      'en': '11',
      'es': '',
    },
    'jd5twqi6': {
      'en': '12',
      'es': '',
    },
    '2o56cmdk': {
      'en': 'Close',
      'es': '',
    },
    'rbgxzdm6': {
      'en': 'am',
      'es': '',
    },
    'z189xws0': {
      'en': 'pm',
      'es': '',
    },
    's5cpcvz4': {
      'en': 'Lunch break at',
      'es': '',
    },
    'z0oih2xi': {
      'en': '01',
      'es': '',
    },
    'kx9ns0t5': {
      'en': '02',
      'es': '',
    },
    '8gmqasvd': {
      'en': '03',
      'es': '',
    },
    'brvmrm7k': {
      'en': '04',
      'es': '',
    },
    '67h5n858': {
      'en': '05',
      'es': '',
    },
    'm1b5iht7': {
      'en': '06',
      'es': '',
    },
    'pvoubp2j': {
      'en': '07',
      'es': '',
    },
    'gwx32s1t': {
      'en': '08',
      'es': '',
    },
    '1sbu7fzk': {
      'en': '09',
      'es': '',
    },
    '56rgfnln': {
      'en': '10',
      'es': '',
    },
    '2z4shym2': {
      'en': '11',
      'es': '',
    },
    '5jvtxj1y': {
      'en': '12',
      'es': '',
    },
    '5tgatybs': {
      'en': 'Hour',
      'es': '',
    },
    '57cqlmvi': {
      'en': 'Restart at',
      'es': '',
    },
    'pefoi01o': {
      'en': '01',
      'es': '',
    },
    '6xi1l20q': {
      'en': '02',
      'es': '',
    },
    'sssbr0of': {
      'en': '03',
      'es': '',
    },
    '27waaykq': {
      'en': '04',
      'es': '',
    },
    'n1yphlbj': {
      'en': '05',
      'es': '',
    },
    'iw15bht3': {
      'en': '06',
      'es': '',
    },
    'n6q1d07q': {
      'en': '07',
      'es': '',
    },
    'v08vby51': {
      'en': '08',
      'es': '',
    },
    '924d9yn6': {
      'en': '09',
      'es': '',
    },
    '34o49n6s': {
      'en': '10',
      'es': '',
    },
    'b5a8x7il': {
      'en': '11',
      'es': '',
    },
    '7wx2l2e7': {
      'en': '12',
      'es': '',
    },
    'yly31svt': {
      'en': 'Hour',
      'es': '',
    },
    'rer8m89m': {
      'en': 'Tuesday',
      'es': '',
    },
    '5m77i1zr': {
      'en': '01',
      'es': '',
    },
    '1znkqan8': {
      'en': '02',
      'es': '',
    },
    'm8fk3dsx': {
      'en': '03',
      'es': '',
    },
    'qqnh3ugc': {
      'en': '04',
      'es': '',
    },
    'el8nw517': {
      'en': '05',
      'es': '',
    },
    '42oc9mc3': {
      'en': '06',
      'es': '',
    },
    '7y1wolar': {
      'en': '07',
      'es': '',
    },
    '9h2tqxoj': {
      'en': '08',
      'es': '',
    },
    '6zwxz5u7': {
      'en': '09',
      'es': '',
    },
    'x25bjmj1': {
      'en': '10',
      'es': '',
    },
    'u3f23v6c': {
      'en': '11',
      'es': '',
    },
    'wes6t6d9': {
      'en': '12',
      'es': '',
    },
    '0pgkusbd': {
      'en': 'Close',
      'es': '',
    },
    'nfo03fbu': {
      'en': 'am',
      'es': '',
    },
    'no53qwb1': {
      'en': 'pm',
      'es': '',
    },
    'jg0rwvwq': {
      'en': 'TO',
      'es': '',
    },
    'mma5dg15': {
      'en': '01',
      'es': '',
    },
    '3htiklmi': {
      'en': '02',
      'es': '',
    },
    'f8t1fg8o': {
      'en': '03',
      'es': '',
    },
    'nbmvrsqf': {
      'en': '04',
      'es': '',
    },
    'tahai3zj': {
      'en': '05',
      'es': '',
    },
    '8q3uoi8f': {
      'en': '06',
      'es': '',
    },
    'wmjq8og8': {
      'en': '07',
      'es': '',
    },
    'zl5rbhkn': {
      'en': '08',
      'es': '',
    },
    'p8noxqsg': {
      'en': '09',
      'es': '',
    },
    '6t4yub1y': {
      'en': '10',
      'es': '',
    },
    'm5e95txt': {
      'en': '11',
      'es': '',
    },
    'f752zvsu': {
      'en': '12',
      'es': '',
    },
    'd64tj3t9': {
      'en': 'Close',
      'es': '',
    },
    'pczsuziw': {
      'en': 'am',
      'es': '',
    },
    'bpesbkeq': {
      'en': 'pm',
      'es': '',
    },
    'ea19wodb': {
      'en': 'Wendsday',
      'es': '',
    },
    '4vy3ajtc': {
      'en': '01',
      'es': '',
    },
    'wa1kvkxo': {
      'en': '02',
      'es': '',
    },
    '4qohm164': {
      'en': '03',
      'es': '',
    },
    '59zxon1j': {
      'en': '04',
      'es': '',
    },
    'nwglotiy': {
      'en': '05',
      'es': '',
    },
    '3w2qutzy': {
      'en': '06',
      'es': '',
    },
    '049z2cw7': {
      'en': '07',
      'es': '',
    },
    'lqlrm6zc': {
      'en': '08',
      'es': '',
    },
    'so0ylitz': {
      'en': '09',
      'es': '',
    },
    '3vf2u7dm': {
      'en': '10',
      'es': '',
    },
    '1ueaq8cr': {
      'en': '11',
      'es': '',
    },
    '9vvj1uau': {
      'en': '12',
      'es': '',
    },
    '2mvjmbho': {
      'en': 'Close',
      'es': '',
    },
    'b3za9xho': {
      'en': 'am',
      'es': '',
    },
    'i7sxsqr7': {
      'en': 'pm',
      'es': '',
    },
    'yxigr68c': {
      'en': 'TO',
      'es': '',
    },
    'lq7e680v': {
      'en': '01',
      'es': '',
    },
    'wtacek23': {
      'en': '02',
      'es': '',
    },
    '9m442hw1': {
      'en': '03',
      'es': '',
    },
    'z4mkbvkv': {
      'en': '04',
      'es': '',
    },
    'i8833cji': {
      'en': '05',
      'es': '',
    },
    'wxhasx1o': {
      'en': '06',
      'es': '',
    },
    '56y7tzey': {
      'en': '07',
      'es': '',
    },
    'a6xzbmuq': {
      'en': '08',
      'es': '',
    },
    '4uo8pywb': {
      'en': '09',
      'es': '',
    },
    '5r9246se': {
      'en': '10',
      'es': '',
    },
    'ltvfhroy': {
      'en': '11',
      'es': '',
    },
    '9ovhtn5o': {
      'en': '12',
      'es': '',
    },
    'ewne372k': {
      'en': 'Close',
      'es': '',
    },
    'wpnbo53v': {
      'en': 'am',
      'es': '',
    },
    'vwbeicrt': {
      'en': 'pm',
      'es': '',
    },
    '4m7752tp': {
      'en': 'Thursday',
      'es': '',
    },
    'vi7xsoqo': {
      'en': '01',
      'es': '',
    },
    'kdihyvcn': {
      'en': '02',
      'es': '',
    },
    '9fcb9rn1': {
      'en': '03',
      'es': '',
    },
    '65lt4mvk': {
      'en': '04',
      'es': '',
    },
    's2c3ovmb': {
      'en': '05',
      'es': '',
    },
    '9p17aaoe': {
      'en': '06',
      'es': '',
    },
    'mwzejk3n': {
      'en': '07',
      'es': '',
    },
    'e9r9ch1f': {
      'en': '08',
      'es': '',
    },
    '35czrem2': {
      'en': '09',
      'es': '',
    },
    '1w6yzbtv': {
      'en': '10',
      'es': '',
    },
    'tjlntah7': {
      'en': '11',
      'es': '',
    },
    'xt3k51c4': {
      'en': '12',
      'es': '',
    },
    'ujseowph': {
      'en': 'Close',
      'es': '',
    },
    'z0xaams1': {
      'en': 'am',
      'es': '',
    },
    '0iawizkx': {
      'en': 'pm',
      'es': '',
    },
    'plrmaafn': {
      'en': 'TO',
      'es': '',
    },
    'iglhsc2v': {
      'en': '01',
      'es': '',
    },
    'uvs5pqti': {
      'en': '02',
      'es': '',
    },
    'd0yjqr07': {
      'en': '03',
      'es': '',
    },
    '9q1e7egv': {
      'en': '04',
      'es': '',
    },
    '7s5jwxwl': {
      'en': '05',
      'es': '',
    },
    'tlyaam9h': {
      'en': '06',
      'es': '',
    },
    'p3nil92z': {
      'en': '07',
      'es': '',
    },
    'ed3s0b4j': {
      'en': '08',
      'es': '',
    },
    'dd4ghzkd': {
      'en': '09',
      'es': '',
    },
    'hpeebmkm': {
      'en': '10',
      'es': '',
    },
    'q6awb0pe': {
      'en': '11',
      'es': '',
    },
    'nttqn3g8': {
      'en': '12',
      'es': '',
    },
    'm26jt69s': {
      'en': 'Close',
      'es': '',
    },
    'zwvqdff5': {
      'en': 'am',
      'es': '',
    },
    'w01h3dwb': {
      'en': 'pm',
      'es': '',
    },
    'wwqek8h7': {
      'en': 'Friday',
      'es': '',
    },
    'keatdi11': {
      'en': '01',
      'es': '',
    },
    'ig5yjp5f': {
      'en': '02',
      'es': '',
    },
    'sif9e43h': {
      'en': '03',
      'es': '',
    },
    'zzh828i9': {
      'en': '04',
      'es': '',
    },
    'h4fej4rv': {
      'en': '05',
      'es': '',
    },
    'l94w3q3h': {
      'en': '06',
      'es': '',
    },
    'm6snmera': {
      'en': '07',
      'es': '',
    },
    'n6n9teo4': {
      'en': '08',
      'es': '',
    },
    't3l4j20f': {
      'en': '09',
      'es': '',
    },
    'x3iqhdx8': {
      'en': '10',
      'es': '',
    },
    'ebyuhcfs': {
      'en': '11',
      'es': '',
    },
    'j725rf5n': {
      'en': '12',
      'es': '',
    },
    'sbvjey25': {
      'en': 'Close',
      'es': '',
    },
    'nr31c7ak': {
      'en': 'am',
      'es': '',
    },
    'm7m8gd6q': {
      'en': 'pm',
      'es': '',
    },
    'yj1p5w4u': {
      'en': 'TO',
      'es': '',
    },
    '7h9bukzl': {
      'en': '01',
      'es': '',
    },
    'wd0le2py': {
      'en': '02',
      'es': '',
    },
    'iojqvrtt': {
      'en': '03',
      'es': '',
    },
    '5yjwgt3x': {
      'en': '04',
      'es': '',
    },
    'vc0a7asa': {
      'en': '05',
      'es': '',
    },
    'zsajq9m7': {
      'en': '06',
      'es': '',
    },
    'mme06r4r': {
      'en': '07',
      'es': '',
    },
    'gqzu2oo2': {
      'en': '08',
      'es': '',
    },
    'hih4zibu': {
      'en': '09',
      'es': '',
    },
    's8g767yd': {
      'en': '10',
      'es': '',
    },
    'lpkzx5a1': {
      'en': '11',
      'es': '',
    },
    'i6yza73x': {
      'en': '12',
      'es': '',
    },
    'iiqle9e9': {
      'en': 'Close',
      'es': '',
    },
    'g8x7pp57': {
      'en': 'am',
      'es': '',
    },
    '7r9vk8qf': {
      'en': 'pm',
      'es': '',
    },
    'u9oecaqb': {
      'en': 'Saturday',
      'es': '',
    },
    'xaxgoonx': {
      'en': '01',
      'es': '',
    },
    'ajtvozxh': {
      'en': '02',
      'es': '',
    },
    'osyq7rvg': {
      'en': '03',
      'es': '',
    },
    'ff1eibj5': {
      'en': '04',
      'es': '',
    },
    '0byel15h': {
      'en': '05',
      'es': '',
    },
    'wd0m4ayw': {
      'en': '06',
      'es': '',
    },
    'rd2ft59m': {
      'en': '07',
      'es': '',
    },
    'exe8wl32': {
      'en': '08',
      'es': '',
    },
    'uhqb2kh3': {
      'en': '09',
      'es': '',
    },
    'yl7x1vj7': {
      'en': '10',
      'es': '',
    },
    'nadyzuhn': {
      'en': '11',
      'es': '',
    },
    '7ppyqdox': {
      'en': '12',
      'es': '',
    },
    'x2thqxpy': {
      'en': 'Close',
      'es': '',
    },
    'iqvxj9vc': {
      'en': 'am',
      'es': '',
    },
    'oy8hde1v': {
      'en': 'pm',
      'es': '',
    },
    '3wtmv7dy': {
      'en': 'TO',
      'es': '',
    },
    'kv2we4s1': {
      'en': '01',
      'es': '',
    },
    'hk6vume9': {
      'en': '02',
      'es': '',
    },
    'q28revg8': {
      'en': '03',
      'es': '',
    },
    'sxe4etsj': {
      'en': '04',
      'es': '',
    },
    'to8jppl7': {
      'en': '05',
      'es': '',
    },
    'd6jsx1uf': {
      'en': '06',
      'es': '',
    },
    'auyc8bef': {
      'en': '07',
      'es': '',
    },
    'mtlr8vtx': {
      'en': '08',
      'es': '',
    },
    'p2qbacx1': {
      'en': '09',
      'es': '',
    },
    'x9kyb3az': {
      'en': '10',
      'es': '',
    },
    'y26jj8ei': {
      'en': '11',
      'es': '',
    },
    '70pfc027': {
      'en': '12',
      'es': '',
    },
    'gshb9dhe': {
      'en': 'Close',
      'es': '',
    },
    'ae0yfvlb': {
      'en': 'am',
      'es': '',
    },
    '09ap8plf': {
      'en': 'pm',
      'es': '',
    },
    'zkoqmanl': {
      'en': 'Sunday',
      'es': '',
    },
    'm99n3pld': {
      'en': '01',
      'es': '',
    },
    'b6hkwdby': {
      'en': '02',
      'es': '',
    },
    'ws1vffaj': {
      'en': '03',
      'es': '',
    },
    '7ng4spvr': {
      'en': '04',
      'es': '',
    },
    'wriivwvf': {
      'en': '05',
      'es': '',
    },
    'p8w4dqlp': {
      'en': '06',
      'es': '',
    },
    '01ookxry': {
      'en': '07',
      'es': '',
    },
    '7kttkou8': {
      'en': '08',
      'es': '',
    },
    'mhljm43y': {
      'en': '09',
      'es': '',
    },
    'xzg0yffr': {
      'en': '10',
      'es': '',
    },
    'x5qsz5ws': {
      'en': '11',
      'es': '',
    },
    '0aw4czo1': {
      'en': '12',
      'es': '',
    },
    'r9irjf61': {
      'en': 'Close',
      'es': '',
    },
    'pa24vz1d': {
      'en': 'am',
      'es': '',
    },
    'k1v3by4s': {
      'en': 'pm',
      'es': '',
    },
    'lb5cf6mk': {
      'en': 'TO',
      'es': '',
    },
    'rmg3rj3y': {
      'en': '01',
      'es': '',
    },
    'xz9e1916': {
      'en': '02',
      'es': '',
    },
    'wn8moru6': {
      'en': '03',
      'es': '',
    },
    'o3bi7giw': {
      'en': '04',
      'es': '',
    },
    'an7giblz': {
      'en': '05',
      'es': '',
    },
    '6clwc714': {
      'en': '06',
      'es': '',
    },
    '8fvg8c85': {
      'en': '07',
      'es': '',
    },
    'sqddqato': {
      'en': '08',
      'es': '',
    },
    'ixt9j0m7': {
      'en': '09',
      'es': '',
    },
    '8g0z6xzl': {
      'en': '10',
      'es': '',
    },
    'ezjekwu8': {
      'en': '11',
      'es': '',
    },
    '1zjih2oi': {
      'en': '12',
      'es': '',
    },
    'z9yzmgpg': {
      'en': 'Close',
      'es': '',
    },
    'higv89hp': {
      'en': 'am',
      'es': '',
    },
    '1t5427uf': {
      'en': 'pm',
      'es': '',
    },
    'hsnluxh7': {
      'en': 'Specialized In',
      'es': '',
    },
    'g2glxefv': {
      'en': 'Haircut',
      'es': '',
    },
    'podv54do': {
      'en': ' Style',
      'es': '',
    },
    'ytqddiam': {
      'en': 'Beard',
      'es': '',
    },
    'hf9fm2zj': {
      'en': ' ',
      'es': '',
    },
    '5zj253ul': {
      'en': 'Eyebrowns',
      'es': '',
    },
    'n0ca57rm': {
      'en': ' ',
      'es': '',
    },
    'kl6jr1p3': {
      'en': 'Set Schedule',
      'es': '',
    },
    '24p0305y': {
      'en': 'Barbershop Profile',
      'es': '',
    },
    '6n1ikkzm': {
      'en': 'Home',
      'es': '',
    },
  },
  // BarberNotifications
  {
    'xhsbpgfw': {
      'en': 'Check-in evaluated',
      'es': '',
    },
    'cnmfp16y': {
      'en': 'Mar 8, 2022',
      'es': '',
    },
    'e9w3qwaw': {
      'en': 'Check-in evaluated',
      'es': '',
    },
    'xz85vekt': {
      'en': 'Mar 8, 2022',
      'es': '',
    },
    'r8wo3tgb': {
      'en': 'Check-in evaluated',
      'es': '',
    },
    'fx174exg': {
      'en': 'Mar 8, 2022',
      'es': '',
    },
    'zf8k8feq': {
      'en': 'Appointment Confirmation',
      'es': '',
    },
    '4phc70nh': {
      'en': 'You have a client!',
      'es': '',
    },
    'bdtsmwye': {
      'en': 'Appointment date:',
      'es': '',
    },
    '4mcss2j1': {
      'en': 'Hello World',
      'es': '',
    },
    'q2vtrmmu': {
      'en': 'Time:',
      'es': '',
    },
    'wbbkx2iv': {
      'en': 'Hello World',
      'es': '',
    },
    '34l73j57': {
      'en': 'Payment Method:',
      'es': '',
    },
    'h0dstuqs': {
      'en': 'Hello World',
      'es': '',
    },
    '97pp8cst': {
      'en': 'Enter your note here...',
      'es': '',
    },
    'jm82b5jw': {
      'en': 'Confirm ',
      'es': '',
    },
    'nleh7izk': {
      'en': 'My notifications',
      'es': '',
    },
    'qzs17tr9': {
      'en': 'Home',
      'es': '',
    },
  },
  // resetPassword
  {
    '9vbl8gzi': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'es': '',
    },
    'cjs41k0l': {
      'en': 'Enter your email...',
      'es': '',
    },
    'pwcmxdc6': {
      'en': 'Send Link',
      'es': '',
    },
    'cjs1qjur': {
      'en': 'Forgot Password?',
      'es': '',
    },
    'z3osslmm': {
      'en': 'Back',
      'es': '',
    },
    '1q6gpt77': {
      'en': 'Home',
      'es': '',
    },
  },
  // checkEmailResetPassword
  {
    '8145geg6': {
      'en': 'CHECK YOUR EMAIL',
      'es': '',
    },
    'h1ciyp8w': {
      'en': 'Follow the instructions',
      'es': '',
    },
    'vc2cbds4': {
      'en': 'Back to main',
      'es': '',
    },
    'nfv632hy': {
      'en': 'Home',
      'es': '',
    },
  },
  // clientHome
  {
    'e32ux1hp': {
      'en': 'Type your Name',
      'es': '',
    },
    'qm32jkmj': {
      'en': 'Write a quote.',
      'es': '',
    },
    'jq2ezkid': {
      'en': 'Daily tools',
      'es': '',
    },
    'u9814n6e': {
      'en': 'Barbershop',
      'es': '',
    },
    '8ui4x5zy': {
      'en': 'My Settings',
      'es': '',
    },
    'rpbj0qma': {
      'en': 'My Notifications',
      'es': '',
    },
    '6lt8qgsz': {
      'en': 'Terms of Service',
      'es': '',
    },
    'xnpncnmn': {
      'en': 'Welcome!',
      'es': '',
    },
    'g0fkw02g': {
      'en': 'Find your Barbershop',
      'es': '',
    },
    '9fnzrdhz': {
      'en': 'Log Out',
      'es': '',
    },
    '61aci8ps': {
      'en': '[User Name]',
      'es': '',
    },
    '6zuq0l8h': {
      'en': '[username@domain.com]',
      'es': '',
    },
    '6mbu9k6l': {
      'en': 'Home',
      'es': '',
    },
  },
  // barberOrClient
  {
    'eshij1jm': {
      'en': 'I`m a \nbarber',
      'es': '',
    },
    '7x7eg0w4': {
      'en': 'I need a \nhaircut',
      'es': '',
    },
    '48d6jt20': {
      'en': 'Select one',
      'es': '',
    },
    'ae26p9iq': {
      'en': 'Button',
      'es': '',
    },
    'to5yrv3f': {
      'en': 'Log Out',
      'es': '',
    },
    'pt2d5ets': {
      'en': 'Barber or Client?',
      'es': '',
    },
    '9ulr3dso': {
      'en': 'Home',
      'es': '',
    },
  },
  // bookSeats
  {
    'd7xwi1dd': {
      'en': 'AM',
      'es': '',
    },
    't2an5dme': {
      'en': '08',
      'es': '',
    },
    'm2r2pnv9': {
      'en': '01',
      'es': '',
    },
    'nyh2lzsq': {
      'en': '02',
      'es': '',
    },
    'jy5xg16i': {
      'en': '03',
      'es': '',
    },
    'ymz7f7xb': {
      'en': '04',
      'es': '',
    },
    'kieuhsm5': {
      'en': '05',
      'es': '',
    },
    '2182k5sw': {
      'en': '06',
      'es': '',
    },
    'm6nb7yfu': {
      'en': '07',
      'es': '',
    },
    'ozq7mq7e': {
      'en': '08',
      'es': '',
    },
    'phli24fz': {
      'en': '09',
      'es': '',
    },
    'x254nwjs': {
      'en': '10',
      'es': '',
    },
    'coc0kniy': {
      'en': '11',
      'es': '',
    },
    '5k8b01vb': {
      'en': '12',
      'es': '',
    },
    'uoqdt4qz': {
      'en': 'Select hour...',
      'es': '',
    },
    'icohrvgs': {
      'en': ' : ',
      'es': '',
    },
    '9nf4d5up': {
      'en': '00',
      'es': '',
    },
    'wxq8hzns': {
      'en': '00',
      'es': '',
    },
    'na71oywf': {
      'en': '30',
      'es': '',
    },
    'ub42qzb8': {
      'en': '00',
      'es': '',
    },
    '29az44pp': {
      'en': 'Save seat',
      'es': '',
    },
    'owt0ajtu': {
      'en': 'In the morning or afternoon',
      'es': '',
    },
    'jc2a3t8z': {
      'en': 'PM',
      'es': '',
    },
    '23efqyun': {
      'en': '01',
      'es': '',
    },
    '2xbaffhb': {
      'en': '01',
      'es': '',
    },
    'gd7dxnb3': {
      'en': '02',
      'es': '',
    },
    '1ak1grzz': {
      'en': '03',
      'es': '',
    },
    'p85uf2xw': {
      'en': '04',
      'es': '',
    },
    's2ug9z3v': {
      'en': '05',
      'es': '',
    },
    'bky8p7dt': {
      'en': '06',
      'es': '',
    },
    'i1mqd36e': {
      'en': '07',
      'es': '',
    },
    'tqrztm74': {
      'en': '08',
      'es': '',
    },
    '6xgd2j4r': {
      'en': '09',
      'es': '',
    },
    '529wfo2p': {
      'en': '10',
      'es': '',
    },
    'qbrcnjju': {
      'en': '11',
      'es': '',
    },
    'spninmes': {
      'en': '12',
      'es': '',
    },
    'p3c8vxtx': {
      'en': 'Select hour...',
      'es': '',
    },
    'srq6lgof': {
      'en': ' : ',
      'es': '',
    },
    'njm78eb5': {
      'en': '00',
      'es': '',
    },
    '42i4w3fh': {
      'en': '00',
      'es': '',
    },
    'ydv5c0ao': {
      'en': '30',
      'es': '',
    },
    'grze89hb': {
      'en': '00',
      'es': '',
    },
    'al4ceu79': {
      'en': 'Save seat',
      'es': '',
    },
    'gdy9w9np': {
      'en': 'Booking Seat',
      'es': '',
    },
    'a9cli4y0': {
      'en': 'Home',
      'es': '',
    },
  },
  // clientSettings
  {
    'r6bd2znm': {
      'en':
          'Choose what notifcations you want to recieve below and we will update the settings.',
      'es': '',
    },
    'jr8znu7d': {
      'en': 'Push Notifications',
      'es': '',
    },
    'e8fndnds': {
      'en':
          'Receive Push notifications from our application on a semi regular basis.',
      'es': '',
    },
    'abaszdse': {
      'en': 'Email Notifications',
      'es': '',
    },
    's473iv82': {
      'en':
          'Receive email notifications from our marketing team about new features.',
      'es': '',
    },
    '3fwkloyl': {
      'en': 'Location Services',
      'es': '',
    },
    '9rcychs2': {
      'en':
          'Allow us to track your location, this helps keep track of spending and keeps you safe.',
      'es': '',
    },
    'ugx46blf': {
      'en': 'Log Out',
      'es': '',
    },
    'hiaiye3d': {
      'en': 'Settings',
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
    'w18xruti': {
      'en': 'Please accept notifications so you can be remainded of services.',
      'es': '',
    },
    '7wycred2': {
      'en': 'Need your location for better search.',
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
