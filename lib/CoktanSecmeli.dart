import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuizapp/soru_yapilari.dart'; //soru yapılarındaki classları çekiyorum.
import 'package:kuizapp/Login.dart';
import 'package:flutter/services.dart'; //sistemi direkt kapattırması için kullandım ama yapamadım bir türlü kapanmadı.

Testkismi k = new Testkismi();

class Testkismi {
  int aktif_soru = 0;

  List<Icon> dogru_yanlis = [];

  List<Soru> Sorular = [
    Soru(
        soru_metni: "Türkiye'nin başkenti neresidir?",
        a: "Edirne",
        b: "Adana",
        c: "Istanbul",
        d: "Ankara",
        cevap: "D"),
    Soru(
        soru_metni: "        Aşağıdakilerden hangisi Konya    bölgesine aittir?",
        a: "Etli Ekmek",
        b: "İskender",
        c: "Tava ciğer",
        d: "Tantuni",
        cevap: "A"),
    Soru(
        soru_metni: "        Aşağıdakilerden hangisi bir programlama dili değildir?",
        a: "Java",
        b: "C#",
        c: "HTML",
        d: "C++",
        cevap: "C"),
    Soru(
        soru_metni: "Missipi River nerede bulunur?",
        a: "Amerika",
        b: "İrlanda",
        c: "Norveç",
        d: "Meksika",
        cevap: "A"),
    Soru(
        soru_metni: "Flutter hangi programlama diliyle yazılır?",
        a: "Java",
        b: "Dart",
        c: "Python",
        d: "C++",
        cevap: "B"),
    Soru(
        soru_metni:
            "      Garsonun yazdığı adisyonda,karşısında iki çarpı işareti olan üründen kaç adet sipariş etmişsinizdir?",
        a: "2",
        b: "4",
        c: "6",
        d: "8",
        cevap: "B"),
    Soru(
        soru_metni: "Hangi sorunun muhattabı genellikle çocuklardır?",
        a: "Kaç gün kaldı?",
        b: "Kaç gibi biter?",
        c: "Kaçta gelirsin?",
        d: "Kaça gidiyorsun?",
        cevap: "D"),
    Soru(
        soru_metni:
            "      Ormanlık alanların girişinde görebileceğimiz ünlü söze göre, ormanı bekçiden ziyade hangisinin koruduğunu öğreniriz?",
        a: "Aşk",
        b: "Barış",
        c: "Sevgi",
        d: "Dostluk",
        cevap: "C"),
    Soru(
        soru_metni:
            "     Çok üzülen birinin, halk arasında, burnunun nesinin sızladığı söylenir?",
        a: "Kemik",
        b: "Direk",
        c: "Delik",
        d: "Kemer",
        cevap: "B"),
    Soru(
        soru_metni:
            "    Becerikli, zeki, güçlü anlamında kullanılan kelime hangisidir?",
        a: "Dirayetli",
        b: "Temkinli",
        c: "Görgülü",
        d: "Sıhhatli",
        cevap: "A"),
  ];

  //sonraki soru
  void sonraki_soru() {
    if (Sorular.length - 1 > aktif_soru) {
      aktif_soru++;
    } else {
      aktif_soru=0;
    }
  }

  String soru_metnini_yazdir() {
    return Sorular[aktif_soru].Soru_Metni;
  }

  String a_sikki_yaz() {
    return Sorular[aktif_soru].A_sikki;
  }

  String b_sikki_yaz() {
    return Sorular[aktif_soru].B_sikki;
  }

  String c_sikki_yaz() {
    return Sorular[aktif_soru].C_sikki;
  }

  String d_sikki_yaz() {
    return Sorular[aktif_soru].D_sikki;
  }

  void cevabi_kontrol_kismi(String kullanici_cevabi) {
    if (Sorular[aktif_soru].Cevap == kullanici_cevabi) {
      dogru_yanlis.add(
        Icon(Icons.check),
      );
    } else {
      dogru_yanlis.add(
        Icon(Icons.close),
      );
    }
    sonraki_soru();
  }
}
