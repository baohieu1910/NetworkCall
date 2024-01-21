//
//  User.swift
//  NetworkCall
//
//  Created by Hieu Le on 1/21/24.
//

import Foundation

struct User: Codable, Identifiable, Hashable {
    var id: String
    var isActive: Bool
    var name: String
    var age: Int
    var company: String
    var email: String
    var address: String
    var about: String
    var registered: Date
    var tags: [String]
    var friends: [Friend]
    
    struct Friend: Codable, Identifiable, Hashable, Equatable {
        var id: String
        var name: String
    }
}
