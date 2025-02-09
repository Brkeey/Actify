//
//  User.swift
//  Actify
//
//  Created by Berke Yılmaz on 8.02.2025.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
