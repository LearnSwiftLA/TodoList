
import PackageDescription

let kitura: Package.Dependency = .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 0, minor: 11)

let package = Package(name: "Backend", dependencies: [kitura])