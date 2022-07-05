import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    app.get("by") { req -> String in
        return "by, world!"
    }
   
    let controller = AuthController()
    app.post("register", use: controller.register)
    
//    app.post("register", use: controller.register)

    try app.register(collection: TodoController())
}
