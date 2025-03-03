// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Igikorwa extends ChangeNotifier {
  String? umuti;
  String? ibiro;

  Igikorwa({
    this.umuti,
    this.ibiro,
  });

  inganoYumuti() {
    if (umuti == 'AL') {
      if (ibiro == 'Ibiro 5 - <15') {
        return '➤ 20mg/120mg';
      } else if (ibiro == 'Ibiro 15 - <25') {
        return '➤ 40mg/240mg';
      } else if (ibiro == 'Ibiro 25 - <35') {
        return '➤ 60mg/360mg';
      } else if (ibiro == 'Ibiro 35 no kuzamura') {
        return '➤ 80mg/480mg';
      }
    } else if (umuti == 'Artesunate -Pyronaridine') {
      if (ibiro == 'Ibiro 5- < 8') {
        return '➤ 20mg/60mg';
      } else if (ibiro == 'Ibiro 8- < 15') {
        return '➤ 40mg/120mg';
      } else if (ibiro == 'Ibiro 15- <20') {
        return '➤ 60mg/180mg';
      } else if (ibiro == 'Ibiro 20- <24') {
        return '➤ 60mg/180mg';
      } else if (ibiro == 'Ibiro 24- <45') {
        return '➤ 120mg/360mg';
      } else if (ibiro == 'Ibiro 45 <65') {
        return '➤ 180mg/540mg';
      } else if (ibiro == 'Ibiro 65 kuzamura') {
        return '➤ 240mg/720mg';
      }
    } else if (umuti == 'DihydroartemisininPiperaquine') {
      if (ibiro == 'Ibiro 5 - < 8') {
        return '➤ 20mg/160mg';
      }
      if (ibiro == 'Ibiro 8- <11') {
        return '➤ 30mg/240mg';
      }
      if (ibiro == 'Ibiro 11- <17') {
        return '➤ 40mg/320mg';
      }
      if (ibiro == 'Ibiro 17 - <25') {
        return '➤ 60mg/480mg';
      }
      if (ibiro == 'Ibiro 25 - <36') {
        return '➤ 80mg/640mg';
      }
      if (ibiro == 'Ibiro 36 - <60') {
        return '➤ 120/960 mg';
      }
      if (ibiro == 'Ibiro 60 - <80') {
        return '➤ 160/1280 mg';
      }
      if (ibiro == 'Ibiro 80 Kuzamura') {
        return '➤ 200/1600 mg';
      }
    }
    notifyListeners();
  }

  List<String> iremeRyumuti() {
    if (umuti == 'AL') {
      if (ibiro == 'Ibiro 5 - <15') {
        return [
          'AL 6X1',
        ];
      } else if (ibiro == 'Ibiro 15 - <25') {
        return [
          'AL 6X2',
          'AL 6X1',
        ];
      } else if (ibiro == 'Ibiro 25 - <35') {
        return [
          'AL 6X3',
          'AL 6X2',
          'AL 6x1',
        ];
      } else if (ibiro == 'Ibiro 35 no kuzamura') {
        return [
          'AL 6x4',
          'AL 6x3',
          'AL 6x2',
          'AL 6x1',
        ];
      }
    } else if (umuti == 'Artesunate -Pyronaridine') {
      if (ibiro == 'Ibiro 5- < 8') {
        return [
          '20mg/60mg/agasashi',
        ];
      } else if (ibiro == 'Ibiro 8- < 15') {
        return [
          '20mg/60mg/agasashi',
        ];
      } else if (ibiro == 'Ibiro 15- <20') {
        return [
          '20mg/60mg/agasashi',
        ];
      } else if (ibiro == 'Ibiro 20- <24') {
        return [
          '60mg/180mg/Ikinini',
        ];
      } else if (ibiro == 'Ibiro 24- <45') {
        return [
          '60mg/180mg/Ikinini',
        ];
      } else if (ibiro == 'Ibiro 45 <65') {
        return [
          '60mg/180mg/Ikinini',
        ];
      } else if (ibiro == 'Ibiro 65 kuzamura') {
        return ['60mg/180mg/Ikinini'];
      }
    } else if (umuti == 'DihydroartemisininPiperaquine') {
      if (ibiro == 'Ibiro 5 - < 8') {
        return [
          '20mg/160mg',
        ];
      }
      if (ibiro == 'Ibiro 8- <11') {
        return [
          '30mg/240mg',
        ];
      }
      if (ibiro == 'Ibiro 11- <17') {
        return [
          '40mg/320mg',
          '20mg/160mg',
        ];
      }
      if (ibiro == 'Ibiro 17 - <25') {
        return [
          '30mg/240mg',
          '20mg/160mg',
        ];
      }
      if (ibiro == 'Ibiro 25 - <36') {
        return [
          '80mg/640mg',
          '40mg/320mg',
          '20mg/160mg',
        ];
      }
      if (ibiro == 'Ibiro 36 - <60') {
        return [
          '40mg/320mg',
          '20mg/160mg',
          '30mg/240mg',
        ];
      }
      if (ibiro == 'Ibiro 60 - <80') {
        return [
          '80mg/640mg',
          '40mg/320mg',
          '20mg/160mg',
        ];
      }
      if (ibiro == 'Ibiro 80 Kuzamura') {
        return [
          '40mg/320mg',
          '20mg/160mg',
        ];
      }
    }
    notifyListeners();
    return [''];
  }

  List<String> ukoUmutiUtangwa() {
    if (umuti == 'AL') {
      if (ibiro == 'Ibiro 5 - <15') {
        return [
          '6x1) bafata ibinini 6 (Ikinini 1 buri amasaha 12; iminsi 3)',
        ];
      } else if (ibiro == 'Ibiro 15 - <25') {
        return [
          'bafata ibinini 12 (Ibinini 2 buri amasaha 12; iminsi 3) Blister 1 ',
          'bafata ibinini 12 (Ibinini 2 buri amasaha 12; iminsi 3) blister 2 za 6X1'
        ];
      } else if (ibiro == 'Ibiro 25 - <35') {
        return [
          'bafata ibinini 18 (Ibinini 3 buri amasaha 12; iminsi 3) blister1',
          'ibinini 18 (Ibinini 3 buri amasaha 12; iminsi) 1 Blister ya 6x2 kongeraho 1 blister ya 6x1',
          'ibinini 18  (Ibinini 3 buri amasaha 12; iminsi) Blister 3 za 6X1'
        ];
      } else if (ibiro == 'Ibiro 35 no kuzamura') {
        return [
          'bafata ibinini 24 (Ibinini 4 buri amasaha 12; iminsi 3) 1Blister ya 6x4',
          'Bafata ibinini 24 (Ibinini 4 buri amasaha 12; iminsi 3)  1Blister ya 6x3 kongeraho 1 Blister ya 6x1',
          'Bafata ibinini 24 (Ibinini 4 buri amasaha 12; iminsi 3) 2 blister 6x2',
          'Bafata ibinini 24 (Ibinini 4 buri amasaha 12; iminsi 3) 4 blister 6x1'
        ];
      }
    } else if (umuti == 'Artesunate -Pyronaridine') {
      if (ibiro == 'Ibiro 5- < 8') {
        return [
          'Udusashi 3 (Agashashe 1 kumunsi mu minsi 3)',
        ];
      } else if (ibiro == 'Ibiro 8- < 15') {
        return [
          'Udusashi 6 (Udusashe 2 kumunsi mu minsi 3)',
        ];
      } else if (ibiro == 'Ibiro 15- <20') {
        return [
          'Udusashi 9 (Udusashe 3 kumunsi mu minsi 3)',
        ];
      } else if (ibiro == 'Ibiro 20- <24') {
        return [
          'Ibinini 3 (Ikinini 1 ku munsi mu minsi 3)',
        ];
      } else if (ibiro == 'Ibiro 24- <45') {
        return [
          'Ibinini 6 (Ibinini 2 ku munsi mu minsi 3)',
        ];
      } else if (ibiro == 'Ibiro 45 <65') {
        return [
          'Ibinini 9 (Ibinini 3 ku munsi mu minsi 3)',
        ];
      } else if (ibiro == 'Ibiro 65 kuzamura') {
        return ['Ibinini 12 (Ibinini 4 ku munsi mu minsi 3)'];
      }
    } else if (umuti == 'DihydroartemisininPiperaquine') {
      if (ibiro == 'Ibiro 5 - < 8') {
        return [
          '3 (Ikinini 1 ku munsi mu minsi 3)',
        ];
      }
      if (ibiro == 'Ibiro 8- <11') {
        return [
          '3 (Ikinini 1 ku munsi mu minsi 3)',
        ];
      }
      if (ibiro == 'Ibiro 11- <17') {
        return [
          '3 (Ibinini 1 ku munsi mu minsi 3)',
          '6 (Ibinini 2 ku munsi mu minsi 3)'
        ];
      }
      if (ibiro == 'Ibiro 17 - <25') {
        return [
          '6 (Ibinini 2 ku munsi mu minsi 3)',
          '9 (Ibinini 3 ku munsi mu minsi 3)'
        ];
      }
      if (ibiro == 'Ibiro 25 - <36') {
        return [
          '3 (Ikinini 1 ku munsi mu minsi 3)',
          '6 (Ibinini 2 ku munsi mu minsi 3',
          '12 (ibinini 4 ku munsi mu minsi 3)'
        ];
      }
      if (ibiro == 'Ibiro 36 - <60') {
        return [
          '9 (Ibinini 3 ku munsi mu minsi 3)',
          '18 (ibinini 6 ku munsi mu minsi 3)',
          '12 (Ibinini 4 ku munsi mu minsi 3)'
        ];
      }
      if (ibiro == 'Ibiro 60 - <80') {
        return [
          '6 (ibinini 2 ku munsi mu minsi 3)',
          '12 (Ibinini 4 ku munsi mu minsi 3)',
          '24 (ibinini 8 ku munsi mu minsi 3)'
        ];
      }
      if (ibiro == 'Ibiro 80 Kuzamura') {
        return [
          '➤ 15 (Ibinini 5 ku munsi mu minsi 3)',
          '➤ 30 (ibinini 10 ku munsi mu minsi 3)'
        ];
      }
    }
    notifyListeners();
    return [];
  }
}
