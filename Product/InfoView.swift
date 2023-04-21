//
//  InfoView.swift
//  Product
//
//  Created by Mac on 21/4/23.
//

import UIKit
import Kingfisher
class InfoView: UIViewController {
    
    
    var prod:Products!
    
    
    
    @IBOutlet weak var image: UIImageView!
    
    
    @IBOutlet weak var LABLE: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        image.layer.borderWidth = 2
        image.layer.backgroundColor = UIColor.black.cgColor
        add()
        
        
        // Do any additional setup after loading the view.
    }
    private func add(){
        image.kf.setImage(with: URL(string: prod.thumbnail))
        LABLE.text = prod.description
    }
 

}
