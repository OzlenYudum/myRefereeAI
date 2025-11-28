import 'package:flutter/material.dart';
import 'package:myRefereeAI/presenter/themes/colors.dart';
import 'package:myRefereeAI/presenter/themes/themes.dart';

class LightAppTheme extends AppTheme {
  const LightAppTheme()
      : super(
          name: 'light',
          brightness: Brightness.light,
          colors: const AppThemeColors(
            // TEMA GENELİ
            primarySwatch: Colors.grey, // Swatch'ı griye çektik
            primary: Color(0xFF1A1A1A), // Derin Siyah (Butonlar, AppBar Başlıkları)
            secondary: Color(0xFF424242), // Koyu Gri (İkincil butonlar, ikonlar)
            accent: Color(0xFFFF4136), // Kırmızı Vurgu (Hakem Kırmızı Kartı / Kritik uyarılar)

            // YÜZEY VE ZEMİN
            background: Color(0xFFFFFFFF), // Saf Beyaz Zemin
            backgroundDark: Color(0xFFF0F0F0), // Açık Gri (Kart Arka Planları)
            border: Color(0xFFD9D9D9), // Çok Açık Gri (Ayırıcılar, Kenarlıklar)

            // METİN
            text: Color(0xFF121212), // Koyu Siyah (Okunabilirlik)
            textOnPrimary: Color(0xFFFFFFFF), // Siyah üzerinde Beyaz Metin
            disabled: Color(0x64424242), // Gri Tonlu (Pasif Butonlar)
            hint: Color(0x99424242), // Hafif Gri (Giriş Alanı İpuçları)

            // DURUM (Durum renkleri, kural kararları için gereklidir)
            information: Color(0xFF0074D9), // Mavi (Genel Bilgi, Tartışmalı Pozisyonlar)
            success: Color(0xFF2ECC40), // Yeşil (Başarılı İşlem, 'Temiz Pozisyon' / Gol)
            alert: Color(0xFFFFA500), // Turuncu (Uyarı, Sarı Kart)
            warning: Color(0xFFFF9D5C), // Hafif Turuncu (İkincil Uyarı)
            error: Color(0xFFFF4136), // Kırmızı (Hata, Kırmızı Kart / Penaltı Kararı)
          ),
        );
}
