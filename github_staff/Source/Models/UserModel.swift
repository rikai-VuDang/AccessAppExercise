//
//  UserModel.swift
//  github_staff
//
//  Created by Dang Nguyen Vu on 26/05/2022.
//

import Foundation

struct UserModel: Codable {
    var id: Int?
    var login: String?
    var avatarUrl: String?
    var siteAdmin: Bool?
    var bio: String?
    var location: String?
    var blog: String?
}
