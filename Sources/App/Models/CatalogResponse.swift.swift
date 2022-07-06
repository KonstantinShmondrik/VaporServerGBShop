//
//  CatalogResponse.swift.swift
//  
//
//  Created by Константин Шмондрик on 06.07.2022.
//

import Vapor

struct CatalogResponse: Content {
    let page_number: Int
    let products: [CatalogContent]
}

struct CatalogContent: Content {
    let id_product: Int?
    let product_name: String?
    let price: Int?
    let shortDescription: String?
    let picUrl: String?
}
