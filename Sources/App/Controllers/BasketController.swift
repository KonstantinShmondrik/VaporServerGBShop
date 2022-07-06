//
//  CardController.swift
//  
//
//  Created by Константин Шмондрик on 06.07.2022.
//

import Vapor

class BasketController {
    func getBasket(_ req: Request) throws -> EventLoopFuture<BasketResponse> {
        guard let body = try? req.content.decode(User.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = BasketResponse(
            amount: 46600,
            countGoods: 2,
            contents: [
                BasketContents(id_product: 123, product_name: "Ноутбук", price: 45600, quantity: 1),
                BasketContents(id_product: 456, product_name: "Мышка", price: 1000, quantity: 1)
            ]
        )
        
        return req.eventLoop.future(response)
    }
    
    func payBasket(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(User.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Товары в корзине успешно оплачены.",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func addToBasket(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(Basket.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Товар успешно добавлен в корзину.",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func deleteFromBasket(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(Basket.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Товар успешно удален из корзины.",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
}
