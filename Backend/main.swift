
import Kitura
import KituraNet
import KituraSys
import Data
import SwiftyJSON

let router = Router()
router.get("/lists") { _, response, _ in
    let dummies = List.dummies().map { $0.toJSON() }
    try! response.status(.OK).send(json: JSON(dummies)).end()
}

router.get("/list/:index") { request, response, _ in
    if let index = Int(request.params["index"] ?? "") {

        var dummies = Todo.dummies().filter { $0.listID == index }.map { $0.toJSON() }

        try! response.status(.OK).send(json: JSON(dummies)).end()
    } else {
        response.status(.badRequest)
    }
}

HTTPServer.listen(port: 8090, delegate: router)
Server.run()
