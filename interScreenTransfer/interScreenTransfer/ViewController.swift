//
//  ViewController.swift
//  interScreenTransfer
//
//  Created by Yasemin salan on 20.01.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Görünüm hiyerarşisi belleğe yüklendikten sonra çağrılır.UI elemanlarını yapılandırmak ve başlangıç ayarlarını yapmak için idealdir.
        
        //Yaşam Döngüsü Sıralaması
        //Bir view controller'ın yaşam döngüsü şu sıraya göre işler:
        //Yaratılma: init()
        //Yükleme: loadView(), viewDidLoad()
        //Gösterilme: viewWillAppear(_:), viewDidAppear(_:)
        //Kaybolma: viewWillDisappear(_:), viewDidDisappear(_:)
        //Bellek Uyarısı: didReceiveMemoryWarning()
    }
    override func viewDidDisappear(_ animated: Bool) {
     //Görünüm tamamen ekrandan kaybolduktan sonra çağrılır.Belleği boşaltmak veya zamanlayıcıları durdurmak için kullanılabilir.
        super.viewDidDisappear(animated)
        print("View Did Disappear çağrıldı.")
    }
    override func viewWillDisappear(_ animated: Bool) {
    //Görünüm ekrandan kaybolmadan hemen önce çağrılır.Değişiklikleri kaydetmek veya işlemleri durdurmak için uygundur.
        super.viewWillDisappear(animated)
        print("View Will Disappear çağrıldı.")
    }
    override func viewWillAppear(_ animated: Bool) {
    //Görünüm ekranda gösterilmeden hemen önce çağrılır.Görünümün her gösterilişinde yapılması gereken işlemler için kullanılır (örneğin, verileri yenilemek).
        super.viewWillAppear(animated)
        print("View Will Appear çağrıldı.")
    }
    override func viewDidAppear(_ animated: Bool) {
    //Görünüm ekranda tamamen görünür hale geldikten sonra çağrılır.Animasyon başlatmak veya kullanıcıdan giriş beklemek için uygundur.
        super.viewDidAppear(animated)
        print("View Did Appear çağrıldı.")
        
    }
    var username =  ""
    @IBAction func nextButton(_ sender: Any) {
        username = nameTextField.text!
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      //seque olmadan yapılacak bütün işlemleri burda yapılır
      //veri aktarma işlemleride burda yapılır
      if segue.identifier == "toSecondVC" {
          let destinationVC = segue.destination as! SecondViewController
          destinationVC.name = username
      }
        
    }


}

