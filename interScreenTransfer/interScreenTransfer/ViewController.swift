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
        // Do any additional setup after loading the view.
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

