//
//  List.swift
//  Common
//
//  Created by Hai Nguyen on 5/4/16.
//
//

public struct List {
    public let name: String
    public let id: Int

    public init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
}

public extension List {

    public static func dummies() -> [List] {
        return ["Monday", "Tuesday", "Wednesday", "Thursday"].enumerated().map { List(name: $1, id: $0) }
    }
}