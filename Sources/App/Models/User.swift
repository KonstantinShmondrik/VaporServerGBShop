//
//  User.swift
//  
//
//  Created by Константин Шмондрик on 06.07.2022.
//

import Vapor

struct User: Content {
    let id_user: Int?
    let user_login: String?
    let password: String?
    let email: String?
    let gender: String?
    let credit_card: String?
    let bio: String?
    let user_name: String?
    let user_lastname: String?
}


