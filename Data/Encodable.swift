//
//  Encodable.swift
//  Common
//
//  Created by Hai Nguyen on 5/4/16.
//
//

import SwiftyJSON

public protocol Encodable {}

public extension Encodable {

    public func toJSON() -> JSON {
#if os(Linux)
        var results: [String: Any] = [:]
#else
        var results: [String: AnyObject] = [:]
#endif

        for child in Mirror(reflecting: self).children {
            guard let label = child.label else { continue }
#if os(Linux)
            results[label] = child.value
#else
            results[label] = child.value as? AnyObject
#endif
        }

        return JSON(results)
    }
}

extension List: Encodable {}
extension Todo: Encodable {}