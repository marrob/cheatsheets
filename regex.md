# 1. Az input mező min 5 max 25 karakter, és csak betűk, ékezetes betűk vagy szóköz lehet.
## Megoldás
^[A-ZÁÉíÓÚÖŐŰ|a-záéíóúöőüű|' ']{5,25}$

## Tesztek
titleControl.setValue('H');
expect(titleControl.valid).toBeFalsy();
titleControl.setValue('12Bohóc');
expect(titleControl.valid).toBeFalsy();
titleControl.setValue('Nagyon-nagyon-nagyon-nagyon hosszú cím');
expect(titleControl.valid).toBeFalsy();
// Helyes beviteli mező esetén:
titleControl.setValue('Vissza a jövőbe');
expect(titleControl.valid).toBeTruthy();
# 2. input mező csak szám karaktereket fogadhat el, 1900 és 2021 közötti számokat.
## Megoldás
^(19[0-9][0-9]|20[0-2][0-1])$
## Tesztek
yearControl.setValue('BU');
expect(yearControl.valid).toBeFalsy();
yearControl.setValue('1999');
expect(yearControl.valid).toBeTruthy();
# 3. 