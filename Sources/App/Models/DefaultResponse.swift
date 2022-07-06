//
//  RegisterResponse.swift
//  
//
//  Created by Константин Шмондрик on 05.07.2022.
//

import Vapor

struct DefaultResponse: Content {
    var result: Int
    var successMessage: String?
    var errorMessage: String?
}
