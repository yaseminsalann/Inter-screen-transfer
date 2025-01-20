# Inter-screen-transfer
Swift programlama dilinde segue işlemi, bir storyboard'da bir view controller'dan başka bir view controller'a geçişi yönetmek için kullanılan bir tekniktir. Özellikle iOS uygulamalarında, kullanıcı arayüzünde gezinme ve veri aktarımı sağlamak için sıklıkla kullanılır.

Segue işlemini gerçekleştirmek için aşağıdaki adımları takip edebilirsiniz:

1. Storyboard'da Segue Oluşturma
2. 
İki View Controller'ı Bağlama:
Storyboard'da bir view controller'dan diğerine geçmek için iki view controller arasında bir segue bağlantısı oluşturun.
Control tuşuna basılı tutarak, bir UIButton, UITableViewCell gibi bir UI elemanından başka bir view controller'a sürükleyin.
Çıkacak menüden uygun bir segue türünü seçin (ör. Show, Present Modally, Custom).

3. Segue Türleri
Show (Push): Navigation Controller ile kullanılan, bir view controller'ı mevcut gezinme yığınının üzerine iter.
Present Modally: Yeni bir view controller'ı modally (bağımsız bir pencere gibi) sunar.
Custom: Özel geçiş animasyonları veya davranışları tanımlamanıza olanak tanır.

4. Segue ile Veri Aktarımı
Bir segue ile bir view controller'dan diğerine geçerken veri aktarmak için prepare(for:sender:) yöntemi kullanılır.

5. Segue'yi Programatik Olarak Tetikleme
Segue'yi storyboard'dan değil, kodla tetiklemek isterseniz performSegue(withIdentifier:sender:) yöntemini kullanabilirsiniz:

6. Unwind Segue
Bir view controller'dan geri dönmek için unwind segue kullanılabilir.
