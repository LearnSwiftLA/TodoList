//
//  Todo.swift
//  Common
//
//  Created by Hai Nguyen on 5/4/16.
//
//

public struct Todo {
    public let title: String
    public let listID: Int
    public let done: Bool

    public init(title: String, listID: Int, done: Bool) {
        self.title = title
        self.listID = listID
        self.done = done
    }
}

public extension Todo {

    static func dummies() -> [Todo] {
        return ["Run", "Walk", "Sleep", "Die", "Learn", "Eat"].enumerated().map { Todo(title: $1, listID: $0 % 4, done: $0 % 2 == 0) }
    }
}