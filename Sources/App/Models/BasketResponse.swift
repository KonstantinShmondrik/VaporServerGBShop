//
//  CardResponse.swift
//  
//
//  Created by Константин Шмондрик on 06.07.2022.
//

import Vapor

struct BasketResponse: Content {
    var amount: Int?
    var countGoods: Int?
    var contents: [BasketContents]
}

struct BasketContents: Content {
    var id_product: Int?
    var product_name: String?
    var price: Int?
    var quantity: Int?
}
