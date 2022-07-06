import Fluent
import Vapor

let userController = UserController()
let itemsController = ItemsController()
let reviewsController = ReviewsController()
let basketController = BasketController()

func routes(_ app: Application) throws {
    app.get { req in
        return "It GBShop is works!"
    }
    
    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    app.post("login.json", use: userController.login)
    app.post("logout.json", use: userController.logout)
    app.post("registerUser.json", use: userController.register)
    app.post("changeUserData.json", use: userController.changeUserData)
    app.post("catalogData.json", use: itemsController.getCatalog)
    app.post("getGoodById.json", use: itemsController.getGood)
    app.post("getReview.json", use: reviewsController.getReviews)
    app.post("addReview.json", use: reviewsController.addReview)
    app.post("removeReview.json", use: reviewsController.removeReview)
    app.post("getBasket.json", use: basketController.getBasket)
    app.post("payBasket.json", use: basketController.payBasket)
    app.post("addToBasket.json", use: basketController.addToBasket)
    app.post("deleteFromBasket.json", use: basketController.deleteFromBasket)
    
//    let controller = AuthController()
//    app.post("registerUser.json", use: controller.register)
//
    
    
    try app.register(collection: TodoController())
}
