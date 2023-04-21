//
//  ViewController3.swift
//  Product
//
//  Created by Mac on 22/4/23.
//

import UIKit

class ViewController3: UIViewController {
    
    
    
    @IBOutlet weak var Textfil1: UITextField!
    
    
    @IBOutlet weak var Textfil2: UITextField!
    
    @IBAction func buttionPost(_ sender: Any) {
        addallert()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    
    func addallert(){
        let alert = UIAlertController(title: "Post Done", message: "You code 200", preferredStyle: .alert)
        let ok = UIAlertAction(title: "ok", style: .default) {(action) in
            
        }
        alert.addAction(ok)
        self.present(alert, animated: true)
                    
        
        
        
    }
}
