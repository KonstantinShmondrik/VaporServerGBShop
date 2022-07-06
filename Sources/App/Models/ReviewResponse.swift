//
//  ReviewResponse.swift
//  
//
//  Created by Константин Шмондрик on 06.07.2022.
//

import Vapor

struct ReviewResponse: Content {
    let id_user: Int?
    let text: String?
}
