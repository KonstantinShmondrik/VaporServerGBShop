//
//  GoodResponse.swift
//  
//
//  Created by Константин Шмондрик on 06.07.2022.
//

import Vapor

struct GoodResponse: Content {
    let result: Int?
    let id_product: Int?
    let product_name: String?
    let price: Int?
    let description: String?
    let picUrl: String?
}
