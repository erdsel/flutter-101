
void main() {

  Televizyon televizyonBir= Televizyon(ekranBilgisi:100, modelBilgisi:'Flutter Tv');
  Televizyon televizyonIki= Televizyon(ekranBilgisi:200, modelBilgisi: 'Mega Tv');


  print("Televizyon Ekran Bilgisi:${televizyonBir.ekranBoyutu} , Televizyon Modeli: ${televizyonBir.modelAdi}");

  print("Televizyon Ekran Bilgisi:${televizyonIki.ekranBoyutu} , Televizyon Modeli: ${televizyonIki.modelAdi}");

  televizyonBir.sesiAc();

}

class Televizyon {

  int?         ekranBoyutu;
  String?      modelAdi;

  void        sesiAc(){
    print('Hoparlor sesi acildi');
  }

  Televizyon ( {int? ekranBilgisi, String ? modelBilgisi} ) {
    //ismi ile belirterek parametre olarak yollama
    this.ekranBoyutu = ekranBilgisi;
    this.modelAdi    = modelBilgisi;
  }


}
