//
//  Model.swift
//  Product
//
//  Created by Mac on 20/4/23.
//

import Foundation
struct Product:Decodable{
    var products = [Products]()
}
struct Products:Decodable{
    var title:String
    var thumbnail: String
    var description:String
}
