// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Igikorwa extends ChangeNotifier {
  String? umuti;
  String? ibiro;
  String? imyaka;

  Igikorwa({
    this.umuti,
    this.ibiro,
    this.imyaka,
  });

  inganoYumuti() {
    if (umuti == 'Artemether Lumefantrine') {
      if (ibiro == 'Ibiro 5 - <15' && imyaka == 'Amezi 6 - 36') {
        return '20mg/120mg';
      } else if (ibiro == 'Ibiro 15 - <25' && imyaka == 'Amezi 37 - Imyaka 8') {
        return '40mg/240mg';
      } else if (ibiro == 'Ibiro 25 - <35' &&
          imyaka == 'Imyaka 9 - Imyaka 14') {
        return '60mg/360mg';
      } else if (ibiro == 'Ibiro 35 no kuzamura' &&
          imyaka == 'Imyaka 15 - kuzamura') {
        return '80mg/480mg';
      } else {
        return 'ntacyabonetse';
      }
    }
    notifyListeners();
  }

  iremeRyumuti() {
    if (umuti == 'Artemether Lumefantrine') {
      if (ibiro == 'Ibiro 5 - <15' && imyaka == 'Amezi 6 - 36') {
        return 'AL 6X1';
      } else if (ibiro == 'Ibiro 15 - <25' && imyaka == 'Amezi 37 - Imyaka 8') {
        return ' 1. AL 6X2 \n 2. AL 6X1';
      } else if (ibiro == 'Ibiro 25 - <35' &&
          imyaka == 'Imyaka 9 - Imyaka 14') {
        return '1. AL 6X3 \n 2. AL 6X2 \n 3. AL 6x1';
      } else if (ibiro == 'Ibiro 35 no kuzamura' &&
          imyaka == 'Imyaka 15 - kuzamura') {
        return ' 1. AL 6x4 \n 2. AL 6x3 \n 3. AL 6x2  \n 4. AL 6x1';
      } else {
        return 'ntacyabonetse';
      }
    }
    notifyListeners();
  }

  ukoUmutiUtangwa() {
    if (umuti == 'Artemether Lumefantrine') {
      if (ibiro == 'Ibiro 5 - <15' && imyaka == 'Amezi 6 - 36') {
        return '(6x1) bafata ibinini 6 (Ikinini 1 buri masaha 12 iminsi 3)';
      } else if (ibiro == 'Ibiro 15 - <25' && imyaka == 'Amezi 37 - Imyaka 8') {
        return '1.bafata ibinini 12 (Ibinini 2 buri masaha 12 iminsi 3)=Blister 1 \n 2.ibinini 12 (Ibinini 2 buri masaha 12 iminsi 3)=blister 2 za 6X1';
      } else if (ibiro == 'Ibiro 25 - <35' &&
          imyaka == 'Imyaka 9 - Imyaka 14') {
        return '1.bafata ibinini 18 (Ibinini 3 buri masaha 12 iminsi 3)=blister1 \n 2.ibinini 18 (Ibinini 3 buri masaha 12 iminsi) = 1 Blister ya 6x2 kongeraho 1 blister ya 6x1 \n 3.ibinini 18 (Ibinini 3 buri masaha 12 iminsi)=Blister 3 za 6X1';
      } else if (ibiro == 'Ibiro 35 no kuzamura' &&
          imyaka == 'Imyaka 15 - kuzamura') {
        return '1.bafata ibinini 24 (Ibinini 4 buri masaha 12 iminsi 3)= 1Blister ya 6x4 \n 2.Bafata ibinini 24 (Ibinini 4 buri masaha 12 iminsi 3)= 1Blister ya 6x3 kongeraho 1 Blister ya 6x1 \n 3.Bafata ibinini 24 (Ibinini 4 buri masaha 12 iminsi 3)= 2 blister 6x2 \n 4.Bafata ibinini 24 (Ibinini 4 buri masaha 12 iminsi 3)= 4 blister 6x1';
      } else {
        return 'ntacyabonetse';
      }
    }
    notifyListeners();
  }
}
