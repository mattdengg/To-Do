//
//  User.swift
//  to-do
//
//  Created by Matthew Deng on 2024-10-23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
