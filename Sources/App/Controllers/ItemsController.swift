//
//  ItemsController.swift
//  
//
//  Created by Константин Шмондрик on 06.07.2022.
//

import Vapor

class ItemsController {
    func getCatalog(_ req: Request) throws -> EventLoopFuture<[CatalogResponse]> {
        guard let body = try? req.content.decode(Catalog.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = [CatalogResponse(page_number: 1,
                                        products: [
                                            CatalogContent(id_product: 123, product_name: "Эппл тряпочка", price: 1990, shortDescription: "Тряпочка Эппл протирать всякое.", picUrl: "https://i.imgur.com/WzgFAPe.jpg"),
                                            CatalogContent(id_product: 124, product_name: "Магическая эппл-мыш", price: 7900, shortDescription: "Мыш Мэджик Маус Эппл магическая.", picUrl: "https://i.imgur.com/zc2ksyh.jpg"),
                                            CatalogContent(id_product: 125, product_name: "Наушники эйрподы про", price: 24990, shortDescription: "Стильные, модные, молодежные наушники эппл.", picUrl: "https://i.imgur.com/F0ZHN9T.jpg"),
                                            CatalogContent(id_product: 126, product_name: "Часы эппл воч найк", price: 36690, shortDescription: "Модные спортивные часы. Пойдет в качестве отличного подарка.", picUrl: "https://i.imgur.com/SXvBkqN.jpg"),
                                            CatalogContent(id_product: 127, product_name: "Хомпод мини оранжевое", price: 13990, shortDescription: "Колонка от Эппл. Звук — отличный.", picUrl: "https://i.imgur.com/FCxpUDN.jpg")
                                        ])]
        
        
        return req.eventLoop.future(response)
    }
    
    func getGood(_ req: Request) throws -> EventLoopFuture<GoodResponse> {
        guard let body = try? req.content.decode(Good.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        var response = GoodResponse(result: 1, id_product: 999, product_name: "Неизвестный товар.", price: 0, description: "Неизвестный товар, непонятный.", picUrl: nil)
        
        switch body.id_product {
        case 123: response = GoodResponse(result: 1, id_product: 123, product_name: "Эппл тряпочка", price: 1990, description: "Салфетка из мягкого неабразивного материала быстро и качественно очистит любой дисплей Apple, в том числе из стекла с нанотекстурой.", picUrl: "https://i.imgur.com/WzgFAPe.jpg")
        case 124: response = GoodResponse(result: 1, id_product: 124, product_name: "Магическая эппл-мыш", price: 7900, description: "Беспроводная мышь Magic Mouse работает от встроенного аккумулятора и легко скользит по рабочей поверхности благодаря цельному основанию. Её поверхность Multi-Touch поддерживает простые жесты, например, позволяя переходить между веб-страницами и прокручивать документы с помощью смахивания.", picUrl: "https://i.imgur.com/zc2ksyh.jpg")
        case 125: response = GoodResponse(result: 1, id_product: 125, product_name: "Наушники эйрподы про", price: 24990, description: "AirPods Pro — уникальные наушники с технологией активного шумоподавления, которые непрерывно оптимизируют звучание с учётом формы вашего уха и положения вкладышей. Они отлично заглушают внешние шумы, поэтому вы можете полностью погрузиться в музыку.", picUrl: "https://i.imgur.com/F0ZHN9T.jpg")
        case 126: response = GoodResponse(result: 1, id_product: 126, product_name: "Часы эппл воч найк", price: 36690, description: "Apple Watch Nike с приложением Nike Run Club — мощный партнёр для бега. Их новый циферблат добавляет каждому вашему движению динамики. Аудиопробежки с тренером заряжают мотивацией.", picUrl: "https://i.imgur.com/SXvBkqN.jpg")
        case 127: response = GoodResponse(result: 1, id_product: 127, product_name: "Хомпод мини оранжевое", price: 13990, description: "Компания Apple, помимо новых iPhone, также представила новую «умную» колонку HomePod mini, которая дополнит её линейку HomePod. Она не только обеспечивает высокое качество звука, но и поддерживает функции голосового помощника Siri, а также может использоваться как базовый блок для управления устройствами умного дома.", picUrl: "https://i.imgur.com/FCxpUDN.jpg")
        default: response = GoodResponse(result: 1, id_product: 999, product_name: "Неизвестный товар.", price: 0, description: "Неизвестный товар, непонятный.", picUrl: nil)
        }
        
        return req.eventLoop.future(response)
    }
}
