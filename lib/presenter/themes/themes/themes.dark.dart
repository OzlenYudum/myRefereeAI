import 'package:flutter/material.dart';
import 'package:myRefereeAI/presenter/themes/colors.dart';
import 'package:myRefereeAI/presenter/themes/styles.dart';
import 'package:myRefereeAI/presenter/themes/themes.dart';

class DarkAppTheme extends AppTheme {
  const DarkAppTheme()
      : super(
          name: 'dark',
          brightness: Brightness.dark,
          colors: const AppThemeColors(
            // TEMA GENELİ
            primarySwatch: Colors.grey, // Swatch'ı griye çektik
            primary: Color(0xFFEBEBEB), // Beyazımsı (Koyu zeminde öne çıkan butonlar, başlıklar)
            secondary: Color(0xFFB0B0B0), // Orta Gri (İkincil butonlar, pasif ikonlar)
            accent: Color(0xFFFF4136), // Kırmızı Vurgu (Hakem Kırmızı Kartı / Kritik uyarılar)

            // YÜZEY VE ZEMİN
            background: Color(0xFF121212), // Derin Siyah (Ana Zemin)
            backgroundDark: Color(0xFF1E1E1E), // Koyu Gri (Kart Arka Planları, Paneller)
            border: Color(0xFF333333), // Koyu Gri (Ayırıcılar, Kenarlıklar)

            // METİN
            text: Color(0xFFFFFFFF), // Saf Beyaz Metin
            textOnPrimary: Color(0xFF121212), // Beyaz üzerinde Koyu Metin
            disabled: Color(0x64B0B0B0), // Gri Tonlu (Pasif Butonlar)
            hint: Color(0x99B0B0B0), // Hafif Açık Gri (Giriş Alanı İpuçları)

            // DURUM (Durum renkleri, kural kararları için gereklidir)
            information: Color(0xFF00BFFF), // Parlak Mavi (Genel Bilgi)
            success: Color(0xFF00FF7F), // Parlak Yeşil ('Temiz Pozisyon' / Gol)
            alert: Color(0xFFFFCC00), // Altın Sarısı (Uyarı, Sarı Kart)
            warning: Color(0xFFFF9800), // Turuncu (İkincil Uyarı)
            error: Color(0xFFFF4136), // Kırmızı (Hata, Kırmızı Kart / Penaltı Kararı)
          ),
          styles: const AppThemeStyles(
            cardShadow: [
              BoxShadow(
                color: Color(0x4D000000),
                offset: Offset(0, 8),
                blurRadius: 23,
              ),
            ],
          ),
        );
}
