# abjad
Google E-tablolar ve LibreOffice Hesap Tablosu için Ebced Hesaplama fonksiyonları

Fonksiyon-fonksiyon kullanıcı tanımlı fonksiyonların açıklaması.

###    abjad("ebced değeri bulunacak metin"; ebced tablosu kodu; şedde seçeneği; ayrıntı seçeneği)

####        "ebced değeri bulunacak metin"

            Arapça ya da İbranice bir metin ya da metnin bulunduğu hücre.

####        ebced tablosu kodu

            0 - 5 tablo kodları Arapça ve İbranice için

            0 Asgari Ebced
            1 Sağir Ebced (Cümel-i Kebir)
            2 Kebir Ebced
            3 Ekber Ebced
            4 Sağir Ebced + Harf Miktarı
            5 Harf Miktarı
            
            6 - 16 tablo kodları sadece Arapça için
            
            6 Asgari Frekans Sırası 
            7 Sağir Frekans Sırası
            8 Kebir Frekans Sırası
            9 Ekber Frekans Sırası
            10 Sağir Frekans Sırası + Harf Miktarı
            11 Asgari Frekans Ebcedi
            12 Sağir Frekans Ebcedi
            13 Kebir Frekans Ebcedi
            14 Ekber Frekans Ebcedi
            15 Sağir Frekans Ebcedi + Harf Miktarı

####        şedde seçeneği

            Şeddeli harf  içermeyen metinler  hesaplanırken formulde verilmesi gerekmez. Şeddeli 
            harfler çift hesaplanacaksa 2, tek hesaplanacaksa 1 girin.

####        ayrıntı seçeneği

            bu seçeneği girmek seçimliktir, eğer 1 olarak girerseniz her harf için verilmiş olan
            tablo koduna göre değerleriyle beraber listeler.
