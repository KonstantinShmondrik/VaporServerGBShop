//
//  RegisterResponse.swift
//  
//
//  Created by Константин Шмондрик on 05.07.2022.
//

import Vapor

struct RegisterResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
