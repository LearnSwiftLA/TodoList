
import Kitura
import KituraNet
import KituraSys

let router = Router()
router.get("/", handler: { _, response, next in
    response.send("Hello World")
    next()
}, { _, response, next in
    try? response.send("Brian").end()
})

HttpServer.listen(port: 8090, delegate: router)
Server.run()