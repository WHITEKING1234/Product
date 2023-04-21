//
//  ViewController2.swift
//  Product
//
//  Created by Mac on 20/4/23.
//

import UIKit

class ViewController2: UIViewController {
    
    
    @IBOutlet weak var ColletctionVIew: UICollectionView!
    
    var product = [Products]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        register()
        fent()
        // Do any additional setup after loading the view.
    }
    private func fetchCoctailsData() async throws -> [Products]{
        product = try await Network.shared.fethData().products
        DispatchQueue.main.async {
            self.ColletctionVIew.reloadData()
        }
        return product
    }
    private func register(){
        ColletctionVIew.register(UINib(nibName: CollectionViewCell.shared, bundle: nil),forCellWithReuseIdentifier: CollectionViewCell.shared)
        ColletctionVIew.delegate = self
        ColletctionVIew.dataSource = self
    }
    private func fent(){
        Task {
            do {
                let drink = try await fetchCoctailsData()
                print(product)
            } catch {
                print(error.localizedDescription)
            }
            
            
            
        }
    }
}

extension ViewController2:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        product.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.shared, for: [indexPath.row]) as! CollectionViewCell
        let Product = product[indexPath.row]
        cell.setup(Product: Product)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "InfoView") as! InfoView
        let model = product[indexPath.row]
        vc.prod = model
        navigationController?.pushViewController(vc, animated: true)
        print("dad")
    }
    
}
extension ViewController2:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 390, height: 150)
    }
}
