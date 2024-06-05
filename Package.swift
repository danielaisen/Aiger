// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Aiger",
    products: [.library(name: "Aiger", targets: ["Aiger"]), ],
    dependencies: [
        .package(url: "https://github.com/danielaisen/CAiger.git", from: "1.0.1")
    ],
    targets: [        
        .target(
            name: "Aiger", 
            dependencies: ["CAiger"],
            path: "Sources"),
        .testTarget(
            name: "AigerTests", 
            dependencies: ["Aiger"])]
)
