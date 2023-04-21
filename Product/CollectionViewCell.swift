//
//  CollectionViewCell.swift
//  Product
//
//  Created by Mac on 20/4/23.
//

import UIKit
import Kingfisher
class CollectionViewCell: UICollectionViewCell {
    
    
    static let shared = (String(describing: CollectionViewCell.self))
    
    
    @IBOutlet weak var Lable: UILabel!
    
    
    
    @IBOutlet weak var Imageview: UIImageView!
    
    
    @IBOutlet weak var info: UILabel!
    
  
    
    @IBOutlet weak var view1: UIView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        Imageview.layer.cornerRadius = 50
        view1.layer.borderColor = UIColor.black.cgColor
        view1.layer.borderWidth = 0.5
        Imageview.layer.borderColor = UIColor.black.cgColor
        Imageview.layer.borderWidth = 2
        Imageview.clipsToBounds = true
    }
    
    func setup(Product:Products){
//        guard let Image = URL(string: Product.images) else{
//            print("da")
//            retur
        Lable.text = Product.title
        info.text = Product.description
        Imageview.kf.setImage(with: URL(string: Product.thumbnail))
        
    }
}
//extension CollectionViewCell{
//    private func getData(formu url:URL,complitoin :@escaping(Data?,URLResponse?,Error?) -> ()){
//        URLSession.shared.dataTask(with: url, completionHandler: complitoin).resume()
//    }
//    private func ImageSetup(from url:URL,to Imaggview:UIImageView){
//        getData(formu: url) { data, response, error in
//            guard let data = data,error == nil else{return}
//            print(response?.suggestedFilename ?? url.lastPathComponent)
//            DispatchQueue.main.async {
//                Imaggview.image = UIImage(data: data)
//            }
//        }
//    }
//}
