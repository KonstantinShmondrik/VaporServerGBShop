//
//  Review.swift
//  
//
//  Created by Константин Шмондрик on 06.07.2022.
//

import Vapor

struct Review: Content {
    var id_product: Int?
    var id_user: Int?
    var text: String?
    var id_comment: Int?
}
