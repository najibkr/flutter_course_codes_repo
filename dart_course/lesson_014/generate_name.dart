import 'dart:math';

String generateName([int minCharacters = 3]) {
  int lettersCount = Random().nextInt(10);
  if (lettersCount < minCharacters) {
    lettersCount = minCharacters;
  }

  var letters =
      'a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z'.split(',');
  String generetedName = '';
  for (int index = 0; index < lettersCount; index++) {
    int letterIndex = Random().nextInt(26);
    generetedName += letters[letterIndex];
  }
  final firstLetter = generetedName[0].toUpperCase();
  generetedName = firstLetter + generetedName.substring(1);
  return generetedName;
}
