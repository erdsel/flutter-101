import 'dart:math'; /*    for random function     */


void main () {

  /* 9.1 Dart Listeler - Sıfırdan Flutter ile Uygulama Geliştirme */
  List <String> pazarListem = ['Peynir','Patates','Sogan','Muz', 'Mandalina'];
//print all elements
  print("Listenin birinci elemani ${pazarListem[0]}");
  print("Listenin ikinci elemani ${pazarListem[1]}");
  print("Listenin ucuncu elemani ${pazarListem[2]}");
  print("Listenin dorduncu elemani ${pazarListem[3]}");
  print("Listenin besinci elemani ${pazarListem[4]}");

//Finding the index of an element in a list

  int PeynirinSirasi=pazarListem.indexOf('Peynir');
  print(PeynirinSirasi);

//add a new element to the list

  pazarListem.add('Elma');
  print(pazarListem);

//finding length of list

  int length=pazarListem.length;
  print(length);


  pazarListem.insert(2, 'Kivi');
  print(pazarListem);

  print(pazarListem[pazarListem.length-4]);


  /* 9.1 Dart Listeler - Sıfırdan Flutter ile Uygulama Geliştirme */


  /*9.2 if-else Koşullu ifadeler / Conditionals - Sıfırdan Flutter ile Uygulama Geliştirme*/

  int piyonSayisi=Random().nextInt(10)+1;
  print(piyonSayisi);

  if(piyonSayisi<=2){ print("normal");}
  else if(piyonSayisi>3 && piyonSayisi<=7){ print("zeki");}
  else{print("nothing");}


  //ternary operations
  int havaSicakligi=28;
  havaSicakligi >29 ? print("Klimayi calistir.") : print("Klimayi calistirma");

  //Creating larger if else structures using multiple nested ternary structures
  havaSicakligi=15;
  havaSicakligi >29 ? print("Klimayi calistir.") : havaSicakligi<18 ? print("Sicaklik dusuk") : print("Sicaklik Yuksek");









}